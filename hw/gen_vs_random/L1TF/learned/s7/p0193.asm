.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 42
sbb sil, dl
sbb al, bl
cmovnle rax, rsi
cwde
and dil, al
and al, al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
or al, -57
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor rcx, rdx
lea ax, qword ptr [rcx]
test rcx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
