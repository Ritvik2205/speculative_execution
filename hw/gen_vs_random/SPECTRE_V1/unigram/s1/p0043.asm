.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -37
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 55
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
adc dl, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
cmovnz rdi, rdx
and rbx, 44
cmp dx, 88
movzx ebx, cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
