.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
inc bl
adc al, dl
and esi, 2
test eax, -251558852
cmp sil, al
cmp dx, 13
xchg ecx, eax
or al, -16
sub al, cl
adc al, -117
and bl, -60
sbb bl, 121
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and si, -74
and dl, dil
sub al, 69
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts ax, 159
adc dil, al
sbb sil, -11
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and bl, al
test cl, -52
sbb ax, -30070
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
