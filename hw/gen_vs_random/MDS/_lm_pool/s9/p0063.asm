.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test esi, 1857129931
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor ax, -1005
and dl, dil
test bl, -14
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
test cl, sil
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
