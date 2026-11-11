.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
xor bx, 47
sub cl, al
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
adc dil, al
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
