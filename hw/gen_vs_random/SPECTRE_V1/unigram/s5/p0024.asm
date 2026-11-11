.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
add cl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
test cx, dx
test dil, -116
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
lea rbx, qword ptr [rax + rax + 7]
xchg rbx, rax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 9
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
cmp al, 62
sbb rdx, -34
sbb ax, -17107
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
