.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor bl, -61
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
btr si, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
not cl
xor cl, 55
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or al, -75
or al, bl
jmp .bb_0.2
.bb_0.2:
test al, 22
and cx, -8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and al, 35
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
