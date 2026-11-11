.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx edi, dl
dec cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor dl, dl
cmp eax, 100
and si, cx
add rax, 913062684
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
