.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 84
test si, bx
and bl, dil
and al, -54
and rax, -636362975
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or sil, -49
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
xor dx, 24
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and cx, -2
or ax, -14271
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
