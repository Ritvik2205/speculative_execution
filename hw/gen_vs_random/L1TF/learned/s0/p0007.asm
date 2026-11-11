.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 25
cmp rbx, 74
lea rcx, qword ptr [rsi + rdi + 44]
and al, al
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
xor di, 99
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 64
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 23
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
