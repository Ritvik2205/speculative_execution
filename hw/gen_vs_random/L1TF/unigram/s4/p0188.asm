.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 39
add cl, 95 # instrumentation
mov dil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 15
btc bx, 168
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 35
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
cmovb edx, ecx
add sil, dl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
btc si, cx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
cmovns edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
