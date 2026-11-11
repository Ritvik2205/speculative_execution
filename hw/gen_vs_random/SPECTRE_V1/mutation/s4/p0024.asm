.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rcx + rbx + 19444]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb ecx, edi
btr rcx, 131
add al, 110 # instrumentation
movzx di, dl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor rcx, 74
adc al, -82
setns cl
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
lea edi, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
imul cl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
jmp .bb_0.2
.bb_0.2:
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
