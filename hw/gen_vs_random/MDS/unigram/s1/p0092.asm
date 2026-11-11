.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
xor dil, cl
cmovle di, cx
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
cmovo eax, esi
jmp .bb_0.1
.bb_0.1:
and di, di
and al, 20 # instrumentation
cmovp ax, cx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
or dil, -76
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and dl, -103 # instrumentation
cmovbe dx, dx
cmovnz cx, cx
or cx, -42
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
