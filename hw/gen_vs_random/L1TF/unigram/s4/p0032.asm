.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ecx, -1856082135
sbb sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
mov dl, dil
movsx ecx, cl
cmp di, dx
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovs di, ax
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
add bx, 54
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
sbb ecx, ecx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
