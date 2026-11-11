.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 60
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
lea eax, qword ptr [rdx + rdi + 88]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg di, ax
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], sil
sbb rdx, 41
inc sil
add al, 73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
sub dil, al
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
lea eax, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
