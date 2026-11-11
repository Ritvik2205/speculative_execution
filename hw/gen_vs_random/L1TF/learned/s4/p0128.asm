.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
setbe cl
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdi + rbx]
sub ax, -12040
xor dl, -91
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and si, bx
sub al, 88
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 44
lea di, qword ptr [rcx]
bt rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
