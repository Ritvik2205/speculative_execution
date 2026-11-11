.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 24404
add al, 24 # instrumentation
lea rax, qword ptr [rax]
sub rax, -1628299544
sub cl, al
cmovo bx, dx
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
sub al, -89
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 46
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
