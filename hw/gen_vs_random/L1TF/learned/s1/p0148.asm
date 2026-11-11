.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -71 # instrumentation
adc ebx, ebx
or cl, al
adc sil, 73
test dil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
xor bl, dl
jmp .bb_0.2
.bb_0.2:
neg dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
or al, al
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
