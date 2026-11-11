.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor al, sil
lea ecx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 42
bswap rdi
or rax, rsi
neg rcx
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add bl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
add al, -76 # instrumentation
cmovnbe bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
