.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
xor bl, 29
sets dl
dec rbx
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 89
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
setnp cl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and cx, 79
cmovo esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
add dl, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
cmovno rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
