.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test sil, al
and cl, dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and dl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
test dl, -95
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
test al, sil
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
