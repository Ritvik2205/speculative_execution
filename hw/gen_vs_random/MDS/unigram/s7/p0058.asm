.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 3
btr esi, edx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or dl, 51
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
test di, 38
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt rbx, 241
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 16
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovo eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 49
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
xor sil, al
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
