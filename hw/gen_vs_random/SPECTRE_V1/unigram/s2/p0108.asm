.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
mul rcx
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 36
and rax, 0b1111111111111 # instrumentation
lea eax, qword ptr [rbx + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -46 # instrumentation
cmovbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
cmp rdi, rsi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
imul eax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
setnb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
