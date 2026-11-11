.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
btr esi, eax
test al, dil
or bl, dl
and sil, -56
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and cl, -71
bt rbx, 241
btr dx, 47
xor dl, 40
or bl, sil
test eax, 424329527
or al, dl
or rax, -141551502
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
