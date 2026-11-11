.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, cx
test cl, dl
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test si, 83
test ebx, -2015966884
or bl, bl
and dil, dil
test sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
xor ax, -1005
xor sil, -14
and rbx, 65
and dl, bl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or bx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
