.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
lea rdi, qword ptr [rcx + rbx + 19444]
sbb ecx, edi
add al, 110 # instrumentation
movzx di, dl
btr rcx, 195
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
adc al, -82
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
setns cl
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
imul cl
xor rcx, 74
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
