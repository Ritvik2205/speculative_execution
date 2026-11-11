.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
or edi, esi
jmp .bb_0.2
.bb_0.2:
test dl, cl
jmp .bb_0.3
.bb_0.3:
and dx, bx
test edi, -1252846009
xor bl, dil
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
