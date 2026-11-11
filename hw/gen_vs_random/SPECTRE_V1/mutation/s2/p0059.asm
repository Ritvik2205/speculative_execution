.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
setbe bl
and rax, -273199823
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
movsx ecx, cx
xchg dl, dl
adc eax, 1725322202
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
lea ax, qword ptr [rbx + rdx + 32397]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and sil, -55
and al, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor dl, dl
cmp eax, 100
and si, cx
add rax, 977059290
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
