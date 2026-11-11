.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
xor rax, 620504108
sub rcx, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 71
setp dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
sub rax, -1628299544
xor dl, bl
xor ax, 913
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add cl, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
