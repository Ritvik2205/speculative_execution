.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
bt ebx, edi
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
add cl, -23 # instrumentation
cmovl ax, cx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
bt cx, cx
add al, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
not dl
cmovp di, di
inc bx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
add sil, -93 # instrumentation
setnb sil
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
xchg rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
