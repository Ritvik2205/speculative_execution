.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
btc bx, si
xor rdx, -59
xor cx, -18
btr rdi, 129
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and dl, 101 # instrumentation
cmovno edi, edx
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
test dl, al
cmovb dx, ax
and dl, -1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rbx, rcx
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and bl, -74 # instrumentation
cmovns edi, ecx
and dil, al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and dl, sil
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
