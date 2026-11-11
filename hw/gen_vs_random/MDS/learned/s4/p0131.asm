.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or bl, dil
not bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
or eax, -1777347252
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
or sil, -78
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor sil, 110
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
