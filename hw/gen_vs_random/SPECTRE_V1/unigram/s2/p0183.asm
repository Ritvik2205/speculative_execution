.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -23
sub edx, 31
add bl, 126 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
add bl, -94 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 9
movsx edi, dil
sbb cl, -122
sub rcx, 49
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
add bl, 26 # instrumentation
sbb bl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt bx, 27
adc al, bl
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 22
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
