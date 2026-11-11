.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 89
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
add dl, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
sbb rbx, 79
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 94
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rcx]
add bx, -105
btr si, ax
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 47
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
xchg bl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
