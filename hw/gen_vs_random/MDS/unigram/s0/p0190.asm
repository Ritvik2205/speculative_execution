.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -127
and cl, -76 # instrumentation
cmovl bx, si
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
bt rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 52
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
xor dx, 29
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and dx, 60
and bl, 21 # instrumentation
cmovb ax, bx
btr cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
