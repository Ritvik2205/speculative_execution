.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
add dl, bl
cmp dil, sil
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
lea ax, qword ptr [rcx]
sbb bl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp al, bl
test eax, 899472326
and bx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
