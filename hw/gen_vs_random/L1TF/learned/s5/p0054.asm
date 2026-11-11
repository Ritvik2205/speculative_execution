.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, 7046
xor al, 38
add dl, -70
not cl
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovbe esi, ebx
test esi, 21
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
