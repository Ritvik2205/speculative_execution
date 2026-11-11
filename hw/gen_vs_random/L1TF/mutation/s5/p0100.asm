.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -110 # instrumentation
btr cx, 181
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setz bl
btr si, dx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or al, cl
cmovb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
dec di
cmp ax, -4865
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
