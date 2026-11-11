.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
setnle sil
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rcx, 61
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 82
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
add sil, sil
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
