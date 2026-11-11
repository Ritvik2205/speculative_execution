.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, eax
sub dl, dil
lea rbx, qword ptr [rsi + rax + 57]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 34
or si, 100
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 43
add al, dil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
