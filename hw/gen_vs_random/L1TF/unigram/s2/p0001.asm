.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, sil
mov eax, edi
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
add dl, -8 # instrumentation
lea edi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add ecx, 24
sub bl, -96
add al, -80
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
cmovnbe eax, esi
add al, -117 # instrumentation
setp al
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
mul rax
mov al, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
