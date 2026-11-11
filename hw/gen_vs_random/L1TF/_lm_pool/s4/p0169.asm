.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmp dil, al
or sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
xor bl, -5
movsx ebx, bl
and dil, sil
xor al, cl
sbb sil, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
