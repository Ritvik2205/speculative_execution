.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
not dil
and al, dl
jmp .bb_0.1
.bb_0.1:
or cl, al
bts rdx, rsi
and si, -121
or al, -75
btc rax, 59
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and cl, -6
xor dil, -124
xor al, 34
xor cx, -18
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
