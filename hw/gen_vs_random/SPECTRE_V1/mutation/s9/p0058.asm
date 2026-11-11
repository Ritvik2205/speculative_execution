.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
lea rdi, qword ptr [rcx + rbx + 19444]
sbb ecx, edi
add al, 110 # instrumentation
movzx di, dl
btr rcx, 131
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
adc al, -92
imul cl
lea edi, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
xor rcx, 74
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
setns cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
