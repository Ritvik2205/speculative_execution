.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
cmovs ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rdi + 33]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
xor cl, cl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
mul ebx
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
