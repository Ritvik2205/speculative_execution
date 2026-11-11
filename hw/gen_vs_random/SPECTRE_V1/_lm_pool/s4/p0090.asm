.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor cl, cl
lea rdi, qword ptr [rdx + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 85
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test rax, rdx
sub ax, 124
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
