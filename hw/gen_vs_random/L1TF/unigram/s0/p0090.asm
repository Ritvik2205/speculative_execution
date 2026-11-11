.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
sbb rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
cmovz ecx, ebx
add cl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
inc bl
add dl, -52 # instrumentation
adc dx, 27
inc edx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
cmp cx, 42
jmp .bb_0.1
.bb_0.1:
sbb cl, al
add bl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovns rax, rax
or dl, dl
cmovnl bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
