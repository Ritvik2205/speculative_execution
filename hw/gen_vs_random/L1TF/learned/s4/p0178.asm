.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 64
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rsi]
xor rsi, 13
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 29
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 82
add al, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 66
mov bl, cl
adc rdx, 11
mov bl, cl
sub rax, 788906357
mov al, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
