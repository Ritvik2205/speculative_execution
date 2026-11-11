.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
movsx ax, bl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add cl, 72 # instrumentation
cmovnl bx, cx
lea ebx, qword ptr [rbx + rax]
cmp rdi, 69
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
adc dl, -49
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and dl, -111
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
add si, bx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
