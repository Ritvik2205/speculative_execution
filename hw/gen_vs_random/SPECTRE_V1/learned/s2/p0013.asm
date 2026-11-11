.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -1265007362
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
adc cl, dl
setb al
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
btc eax, 30
bt ebx, 2
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
lea di, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
lea rcx, qword ptr [rdx]
add cl, 22 # instrumentation
cmovns rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
lea ax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
