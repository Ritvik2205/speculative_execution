.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
jmp .bb_0.1
.bb_0.1:
or al, 25
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
bts rbx, rdx
bts si, 158
test rcx, -613256812
or al, cl
and rax, -978188247
and ax, 29207
or al, 74
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
test dl, bl
or bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
