.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ax, si
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 33
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 79
add dl, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
movsx cx, dil
sub al, dil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 43
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
xor si, 23
cmp bl, al
add dl, 35 # instrumentation
cmovnz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
lea rdi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
