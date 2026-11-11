.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rax + rdi]
adc cl, -19
lea eax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
bts bx, 11
cmovbe rdi, rbx
add al, -25 # instrumentation
sbb cx, ax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rbx, 39
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
bts rbx, 63
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
