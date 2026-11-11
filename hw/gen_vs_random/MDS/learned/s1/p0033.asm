.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
bts rsi, rdi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and al, 14
and dl, -73
btc ax, si
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
xor dil, -124
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
test al, 127
test edx, -372470678
or al, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
