.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -22861
cmp rcx, -121
and dl, bl
add bl, -59
xor ax, 13329
test eax, -251558852
and dl, al
sub dl, dil
or dl, al
and al, 41
neg dl
or cl, dl
xor ax, 13332
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xchg edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
