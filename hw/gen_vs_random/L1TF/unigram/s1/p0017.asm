.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
add cl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
sbb rdx, rdi
xor sil, 64
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
lea rbx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
add dl, 70 # instrumentation
sbb bl, 90
bt dx, 132
test bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
dec edx
dec bl
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
