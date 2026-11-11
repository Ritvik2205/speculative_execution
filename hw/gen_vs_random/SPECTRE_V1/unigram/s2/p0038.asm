.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
cmovnbe rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
btc rbx, rdx
add dl, 103 # instrumentation
cmovno ebx, edx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
cmovs rcx, rdx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
