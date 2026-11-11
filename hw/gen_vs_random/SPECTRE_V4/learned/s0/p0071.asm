.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
or al, 1
add al, -6
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
or al, bl
test dil, -26
and dx, -107
test bl, cl
adc dil, al
mov sil, al
sub rax, 120
cmp rax, 40
or dil, -16
adc bl, cl
adc eax, -60
and al, sil
sub dil, -28
sub al, cl
sub rax, 2016976449
adc sil, 88
or si, 85
sub cl, 78
or dil, 5
mov al, -93
mov al, dil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
