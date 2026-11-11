.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 68
xor rbx, 89
and al, dl
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and eax, 454700988
or sil, -78
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
test eax, 158941032
jmp .bb_0.2
.bb_0.2:
bt ax, si
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr cx, bx
or al, sil
or bl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
