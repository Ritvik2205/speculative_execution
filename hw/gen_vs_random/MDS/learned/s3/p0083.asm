.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 109
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or bl, al
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 23
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
cmovs edx, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, rsi
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
bt dx, 100
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and ax, -30938
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
cmovp esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
