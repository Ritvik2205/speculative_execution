.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
or dil, -41
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
bts di, cx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
btr bx, bx
or rsi, 30
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
cmovl rax, rax
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 47
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 58
and cx, cx
test sil, -55
cmovz esi, ecx
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
