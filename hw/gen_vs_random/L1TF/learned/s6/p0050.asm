.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 49
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
xor al, 45
sub bl, -96
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
adc ax, 87
jmp .bb_0.1
.bb_0.1:
test al, -82
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and dx, 23
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
