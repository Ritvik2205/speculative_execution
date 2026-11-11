.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
bt eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
setnle bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnl dx, si
btc ebx, ecx
add cl, -84 # instrumentation
xchg rdx, rsi
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
imul rax, rax, -49
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
