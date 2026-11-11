.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and cx, -2
xor al, 8
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and ax, 339
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or bx, 33
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test al, sil
xor dl, -59
jmp .bb_0.2
.bb_0.2:
or dl, -31
and ax, 339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
