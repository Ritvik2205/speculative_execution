.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
sub cl, al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
add al, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx + rdi]
setns cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 38
mov dl, cl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
lea si, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
