.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, 14
bt dx, 162
bt bx, di
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor bl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test cl, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and bx, 24
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
