.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
inc dil
neg bl
test sil, 47
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
xchg rdi, rbx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
