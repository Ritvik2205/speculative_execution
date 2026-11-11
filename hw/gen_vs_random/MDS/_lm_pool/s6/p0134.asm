.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
btr dx, ax
xor dl, dil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and cl, -71
or al, bl
test bl, -14
and si, -121
btc bx, 104
or sil, cl
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
