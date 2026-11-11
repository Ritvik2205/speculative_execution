.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
cwde
jmp .bb_0.1
.bb_0.1:
test cl, 43
xor sil, dl
add bl, dl
jmp .bb_0.2
.bb_0.2:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
sbb al, 92
and dil, -82
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
or dl, dil
and al, -68
cmp cx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
