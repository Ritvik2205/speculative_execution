.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 54
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 18
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and dl, cl
test ax, 13879
and cl, al
jmp .bb_0.1
.bb_0.1:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
