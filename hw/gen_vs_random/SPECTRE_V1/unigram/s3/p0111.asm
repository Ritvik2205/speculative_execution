.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
setno cl
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 41
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 57
inc dil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 27
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 21
add al, 110
and cl, cl
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
