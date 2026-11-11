.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
lea rax, qword ptr [rbx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
add esi, -17
cmovl edi, eax
add bl, -37 # instrumentation
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 4
movzx eax, bx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
mov al, cl
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
