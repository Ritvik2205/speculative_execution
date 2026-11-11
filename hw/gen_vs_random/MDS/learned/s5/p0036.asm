.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rax, -2058103810
and al, 87
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor eax, 984871847
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
xor bl, -27
bt ax, bx
and sil, sil
test edx, -1561252782
and bx, 27
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
bt ax, cx
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
