.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, ecx
add dl, dl
and al, dil
cmp cx, 76
and dl, sil
and al, -68
xor bl, al
add al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
