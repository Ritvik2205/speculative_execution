.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
add al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 51
lea si, qword ptr [rbx + rsi + 54]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
xchg dx, bx
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub cl, 86
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
add dl, dl
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
add cl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
mov cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
