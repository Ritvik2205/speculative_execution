.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
xor al, -74
sub dil, cl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
inc bl
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rdi, qword ptr [rbx + rcx + 17]
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
xor cl, dl
sbb al, 33
or al, bl
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
