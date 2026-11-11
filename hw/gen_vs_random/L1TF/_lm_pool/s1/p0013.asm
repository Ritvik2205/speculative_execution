.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
add dl, dil
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
adc dil, 120
and cl, cl
or dil, -113
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
test cx, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
