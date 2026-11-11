.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
xor al, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
xor si, 80
or dil, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
cmovno rdi, rbx
jmp .bb_0.1
.bb_0.1:
or sil, cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 65
btc rdx, 31
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
