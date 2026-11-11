.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
mov dl, dl
movzx ebx, cx
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and bl, sil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
add dl, 125
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
mov ax, di
lea rsi, qword ptr [rdx + rax + 56]
cmp dx, 13
xchg cl, dl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
