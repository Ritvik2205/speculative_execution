.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
add cl, -123 # instrumentation
cmovnp rdi, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 90
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and dl, -92
sets bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 12
lea bx, qword ptr [rsi + rdi + 42]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp eax, -240917296
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
