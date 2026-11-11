.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and cl, -6
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and sil, dil
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and al, 35
test edx, -1561252782
and rbx, 65
or rsi, 95
test cl, dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or bl, 43
or rax, 1020005579
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
