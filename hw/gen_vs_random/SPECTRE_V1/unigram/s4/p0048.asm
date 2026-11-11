.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
xor sil, -33
lea rdi, qword ptr [rdi + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
cmovle cx, cx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
sub sil, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rdx + rdx]
add bl, -114 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
sub cl, bl
mov rcx, rsi
or al, dil
lea rax, qword ptr [rcx + rdx + 14]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
