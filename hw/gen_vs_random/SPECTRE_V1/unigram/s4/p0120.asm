.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
lea ax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
mul al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 74
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
