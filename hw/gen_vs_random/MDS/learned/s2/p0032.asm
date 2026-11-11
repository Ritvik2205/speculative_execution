.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 16560
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and bl, 68
not bl
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 24
test sil, al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor bl, sil
and si, -121
test dx, 16353
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
