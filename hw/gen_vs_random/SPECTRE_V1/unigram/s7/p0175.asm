.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
add cl, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add dl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
sbb dl, 127
setnle cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
add si, 94
lea dx, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
