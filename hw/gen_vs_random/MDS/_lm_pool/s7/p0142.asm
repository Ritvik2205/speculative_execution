.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885380838
not bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and cl, -6
xor al, -26
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or dil, 16
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test dl, -119
and al, -114
or dil, -71
xor dl, -19
xor dil, 124
and cl, -111
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
