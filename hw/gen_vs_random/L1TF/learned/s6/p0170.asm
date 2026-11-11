.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 69
adc al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or al, bl
and al, dl
and rax, -109
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rbx + rax]
test al, -56
test ax, 13879
sub dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
