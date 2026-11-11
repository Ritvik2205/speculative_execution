.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, bx
xchg dl, bl
movsx ax, dil
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
xchg edx, ecx
add al, dil
and dl, dil
neg cl
and dl, -109
movzx eax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
