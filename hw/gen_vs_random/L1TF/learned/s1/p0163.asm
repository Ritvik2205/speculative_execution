.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, ebx
cmp al, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
test sil, 29
add rax, 909978580
jmp .bb_0.2
.bb_0.2:
add dl, sil
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 74
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
