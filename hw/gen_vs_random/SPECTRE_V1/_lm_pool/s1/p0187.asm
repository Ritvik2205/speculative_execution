.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add al, al
sub al, sil
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
xchg al, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, rax
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
