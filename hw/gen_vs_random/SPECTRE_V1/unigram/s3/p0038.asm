.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 15
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 15
mul rdi
bts rcx, rax
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
add cl, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 31
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
adc al, al
add dil, 27
mov rcx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
