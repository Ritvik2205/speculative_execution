.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
bts rsi, rdi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and dil, -62
test rsi, 2
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
or cx, 49
and dx, 60
btc esi, 199
test sil, dl
and sil, cl
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
