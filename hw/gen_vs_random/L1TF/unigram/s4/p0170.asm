.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt rax, rcx
add al, 36 # instrumentation
lea edx, qword ptr [rdx + rsi + 100]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
add al, al
adc di, 80
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
btc dx, bx
not cl
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
