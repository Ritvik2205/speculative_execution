.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
setnle bl
jmp .bb_0.1
.bb_0.1:
imul rax, rax, -49
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovnl dx, si
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
btc ebx, ecx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add cl, -84 # instrumentation
xchg rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
