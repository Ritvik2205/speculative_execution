.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
add al, 110 # instrumentation
movzx di, dl
lea rdi, qword ptr [rcx + rbx + 19444]
sbb ecx, edi
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
btr rcx, 158
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul cl
xor rcx, 74
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
lea edi, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
setns cl
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
