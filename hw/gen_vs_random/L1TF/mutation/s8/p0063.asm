.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, -21455
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jmp .bb_0.1
.bb_0.1:
dec di
cmp ax, -31327
cmovo bx, dx
mov al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
not al
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
