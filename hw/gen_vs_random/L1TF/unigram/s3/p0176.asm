.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ecx, 53
imul ax
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 2
and ecx, -38
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 16
jmp .bb_0.1
.bb_0.1:
mov rcx, 19
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
cmovnb rcx, rcx
add dl, 43 # instrumentation
lea rax, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
