.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
setbe bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rax, -175411684
xchg cl, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and sil, 11
lea ax, qword ptr [rbx + rdx + 32397]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
adc eax, 34
movsx ecx, cx
and al, cl
xchg dl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
