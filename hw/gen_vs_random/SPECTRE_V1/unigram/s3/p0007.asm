.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
adc al, sil
cmp rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
xor sil, cl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
dec rdx
cmovnle rdx, rsi
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
adc si, 6
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 68
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
