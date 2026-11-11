.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
cmovz cx, ax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 8
btr si, bx
and dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
or si, bx
xor edx, eax
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
xor sil, -14
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
