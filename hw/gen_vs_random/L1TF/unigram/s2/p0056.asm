.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmovnle edi, ecx
setle al
bts edx, eax
lea dx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
or al, -57
lea ax, qword ptr [rsi]
add al, 80 # instrumentation
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
