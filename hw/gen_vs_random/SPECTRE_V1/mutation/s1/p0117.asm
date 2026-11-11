.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
test cl, al
and rax, -273199823
setbe bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
xchg cl, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, dl
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
adc eax, -655457029
and sil, 11
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
lea ax, qword ptr [rbx + rdx + 32397]
and al, cl
movsx ecx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
