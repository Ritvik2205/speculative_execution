.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rax, bx
sub bx, 14
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
lea si, qword ptr [rsi + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
lea rdi, qword ptr [rax + rcx]
adc rsi, 110
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
test edx, 63
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 12
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
sub al, -66
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
