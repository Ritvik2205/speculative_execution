.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
and di, 91
btr ax, si
and sil, -56
jmp .bb_0.1
.bb_0.1:
and cl, dil
or rax, -141551502
btr si, di
btc ecx, 73
or sil, -49
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
test al, cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
