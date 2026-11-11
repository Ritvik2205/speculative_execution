.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 52
sub rax, rdi
and bl, -65
and cl, 86
mov bl, dl
setnb cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rdi + rax]
mov dl, al
xor dl, sil
cmp al, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
