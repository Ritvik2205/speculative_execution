.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
test rax, 1000448998
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and cl, -19
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or al, -24
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or ax, -11837
and bl, cl
or cl, bl
jmp .bb_0.1
.bb_0.1:
test cl, 54
test ecx, -1843375753
xor al, 9
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
