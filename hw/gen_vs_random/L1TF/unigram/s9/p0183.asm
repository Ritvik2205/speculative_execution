.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdi, rsi
inc bl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 34
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
test al, -32
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
or rsi, 89
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs cx, di
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
sbb dil, 93
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
mov al, al
setns bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
