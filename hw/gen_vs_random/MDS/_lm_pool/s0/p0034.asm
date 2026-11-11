.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test dl, 9
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or al, -24
or al, 54
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and cl, dl
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
