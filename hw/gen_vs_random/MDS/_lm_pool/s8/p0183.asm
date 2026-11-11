.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
xor dil, -5
test dil, -80
btr dx, di
or dil, dil
and dx, 60
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or rax, 52
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
test al, bl
or cl, 6
jmp .bb_0.2
.bb_0.2:
test al, bl
test bl, -9
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
