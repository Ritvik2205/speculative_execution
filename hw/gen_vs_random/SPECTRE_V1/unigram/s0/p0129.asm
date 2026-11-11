.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmovnb rax, rsi
setnb cl
add dil, 115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
add cl, 0 # instrumentation
adc cl, dil
setnp al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 55
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
test sil, 97
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
