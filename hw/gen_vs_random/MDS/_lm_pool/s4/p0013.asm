.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and dl, -73
or dl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test dl, dil
and dx, 60
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
bts rdx, 200
xor dil, -70
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and ebx, 10
xor al, 99
test al, 127
xor al, dil
xor al, -89
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
