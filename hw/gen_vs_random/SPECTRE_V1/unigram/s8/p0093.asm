.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, dl
sbb ebx, 97
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
cmovs rcx, rax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
test dil, -116
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
cmovle si, cx
bt eax, 78
add cl, -123 # instrumentation
cmovnp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
