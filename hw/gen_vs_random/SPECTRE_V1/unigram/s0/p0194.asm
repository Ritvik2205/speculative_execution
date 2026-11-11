.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
lea rcx, qword ptr [rsi + rdi + 55]
lea ebx, qword ptr [rdx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
imul cl
add ecx, 45
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 11
lea rax, qword ptr [rbx + rdi + 100]
dec cl
imul rcx, rdx, 50
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
