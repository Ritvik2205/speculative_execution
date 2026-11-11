.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 65 # instrumentation
cmovnbe cx, bx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
cmovnp rax, rsi
and esi, 82
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and bl, -82 # instrumentation
cmovz edi, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
jmp .bb_0.1
.bb_0.1:
and rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
cmovo edi, esi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
and dl, -127 # instrumentation
cmovno ecx, edx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
cmovbe esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
