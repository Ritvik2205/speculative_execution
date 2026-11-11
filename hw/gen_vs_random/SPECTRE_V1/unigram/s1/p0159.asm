.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
cmovbe rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 39
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, dl
add bl, -114 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 44
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 73
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
