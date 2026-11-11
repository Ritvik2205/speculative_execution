.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
or al, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and ax, 27170
xor cx, -18
xor dl, -19
and ax, 19740
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
xor al, 9
and al, 35
bt ax, si
and ax, 13090
or al, -75
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and ax, 13090
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
