.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 61
and dil, -83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
not cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
xor sil, 94
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rsi, 65
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
