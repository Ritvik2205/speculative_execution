.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
inc al
add dil, cl
sub al, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 54
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
sub bl, -19
add ax, 6656
sub dil, -111
btc ax, 19
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
