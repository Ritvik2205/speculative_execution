.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
cmovnz rdi, rdx
and rbx, 77
cmp dx, 33
movzx ebx, cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 46
add bl, -46 # instrumentation
cmovbe rbx, rax
sub bl, dil
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 47
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
