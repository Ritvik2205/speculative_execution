.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
add eax, -371144449
cmp sil, cl
add al, -65
and al, 33
sbb cl, sil
add al, -65
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
test dl, -36
cmovle rdi, rcx
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
