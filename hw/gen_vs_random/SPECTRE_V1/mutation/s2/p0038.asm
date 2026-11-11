.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
xchg cl, sil
and rax, -175411684
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
setbe bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
adc eax, -655457029
movsx ecx, cx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
and al, cl
lea ax, qword ptr [rbx + rdx + 32397]
and sil, 11
xchg dl, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
