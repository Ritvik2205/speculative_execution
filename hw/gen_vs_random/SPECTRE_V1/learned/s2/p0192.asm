.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
or dl, bl
test al, -126
cmp al, sil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 33
xor al, -42
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
