.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rcx]
test cl, dl
cmovno edx, esi
add al, 112 # instrumentation
setl sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
btr ecx, 20
add dl, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
bt ecx, edx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
imul rbx, rcx, 85
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
adc di, dx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
cmovl ax, di
btc edx, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
