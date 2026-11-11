.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
lea rbx, qword ptr [rsi + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
cmovnp ax, dx
jmp .bb_0.1
.bb_0.1:
cmp al, sil
inc edx
or ebx, edx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
