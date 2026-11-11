.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, di
lea di, qword ptr [rbx]
mov cl, bl
sub ecx, 63
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
adc bl, -73
mov bl, al
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
