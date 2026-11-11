.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
setbe bl
and rax, 1713273566
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
bts cx, dx
add dl, 38 # instrumentation
setp sil
lea dx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
