.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
cmp rax, rax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 74
xor cl, 49
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 31
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
inc cl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
setnl bl
movzx bx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
