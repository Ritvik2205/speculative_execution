.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 52
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
sbb dil, cl
setns cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add di, ax
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
add edi, -91
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
lea rdx, qword ptr [rbx + rdx]
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
xchg cx, ax
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
