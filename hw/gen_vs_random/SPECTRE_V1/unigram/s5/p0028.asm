.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
not esi
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rdi, 21
add al, 41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
lea cx, qword ptr [rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and sil, -55
or dl, 41
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
