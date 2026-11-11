.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, -175411684
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
test cl, al
setbe bl
xchg cl, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rbx + rdx + 32397]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and al, cl
xchg dl, dl
movsx ecx, cx
adc eax, 1725322202
and sil, 11
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
