.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 98
add dl, sil
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 46
cmovle ebx, esi
bt ecx, 204
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
xor rdi, 92
cmovl rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
and ecx, -38
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
