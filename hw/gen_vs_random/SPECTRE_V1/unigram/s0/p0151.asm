.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdx, 3189408690989687296
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
bt edx, 8
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 30
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add al, 72 # instrumentation
cmovns di, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 99
add dl, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
add bl, -43 # instrumentation
adc cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
