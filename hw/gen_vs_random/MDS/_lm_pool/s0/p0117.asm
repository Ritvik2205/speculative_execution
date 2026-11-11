.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and dil, dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test dl, bl
not al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and cx, -8
or sil, -49
xor al, 8
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
