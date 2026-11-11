.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, cx
add bl, al
setns al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
mov dx, 49
jmp .bb_0.1
.bb_0.1:
cmovb si, di
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
add al, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea si, qword ptr [rcx + rax + 51]
inc dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
