.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
sbb edx, 23
mov al, cl
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
sub dl, -49
or al, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
add ebx, 2
test bl, 45
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
jmp .bb_0.3
.bb_0.3:
test al, sil
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
