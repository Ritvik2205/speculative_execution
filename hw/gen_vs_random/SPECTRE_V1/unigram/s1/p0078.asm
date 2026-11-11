.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
add bl, -76 # instrumentation
cmovnle ax, cx
add dl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub bx, 41
add eax, 1938514106
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
lea eax, qword ptr [rax + rdx + 6]
bts dx, 207
neg esi
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
or bl, cl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
cmp rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
