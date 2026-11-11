.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 27
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
add rbx, 99
setb al
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
jmp .bb_0.3
.bb_0.3:
lea rsi, qword ptr [rcx + rbx]
or al, sil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
