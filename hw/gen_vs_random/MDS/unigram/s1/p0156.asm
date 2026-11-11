.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and bl, 68
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovns ax, dx
test rdi, 2
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 52
cmovz cx, cx
cmovl edi, ebx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 62
and cl, -6
or dil, dil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
cmovnp edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
