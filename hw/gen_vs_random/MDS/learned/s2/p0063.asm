.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 90
xor ax, -6793
test bl, -14
test al, 91
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor ax, -23364
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor al, 34
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test cl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
