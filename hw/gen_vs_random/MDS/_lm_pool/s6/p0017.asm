.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
or al, dil
jmp .bb_0.1
.bb_0.1:
not al
xor bl, -88
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or di, 3
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
bt ax, dx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test edx, -372470678
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
test al, 127
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
