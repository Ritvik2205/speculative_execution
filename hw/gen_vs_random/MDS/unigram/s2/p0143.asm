.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test dl, 27
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test esi, 1857129931
btr ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
test rax, rdi
cmovnbe rax, rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
cmovno cx, bx
xor cl, al
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
btc eax, esi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
