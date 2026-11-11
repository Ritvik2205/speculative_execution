.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns cl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
imul rdi
neg al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 18
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 76
lea rcx, qword ptr [rbx + rdx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
or si, si
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
cmp cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
