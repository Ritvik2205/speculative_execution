.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 34
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test bl, 65
and dl, 72 # instrumentation
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
test si, 55
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovnle edi, esi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and bl, al
or rax, -1561934807
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
btr esi, 60
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 17
and dil, 125
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
