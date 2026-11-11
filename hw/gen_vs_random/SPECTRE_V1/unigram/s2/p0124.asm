.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
setns dl
cmovle rcx, rdx
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
xor rax, -2035087432
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 35
cmovl rdx, rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
lea rbx, qword ptr [rdx + rbx + 12]
xor ebx, 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
