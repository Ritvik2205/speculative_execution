.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cx
lea edi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 85
lea ax, qword ptr [rcx + rdi + 58]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
setnz dl
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
mov dl, sil
lea rsi, qword ptr [rsi + rdx + 46]
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
