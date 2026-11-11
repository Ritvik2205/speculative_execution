.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
or al, 19
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 71
cmp cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 40 # instrumentation
btc rax, rax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
add rbx, 61
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
or cl, bl
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
setnb dil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
