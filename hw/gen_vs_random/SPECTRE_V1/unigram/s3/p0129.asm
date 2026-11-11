.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 39
test dl, -7
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
cmovle si, si
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
setns dil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 66
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bt si, 239
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
