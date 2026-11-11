.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rsi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rsi, 70
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and dl, -15 # instrumentation
cmovnp dx, dx
bt rbx, rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
cmovp edx, edi
btr ecx, 88
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
