.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and sil, dl
test bl, -14
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
btc dx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and al, 84
test dl, dil
xor sil, -15
test al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
