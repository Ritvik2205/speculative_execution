.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, al
sbb al, 49
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
xor al, 54
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
