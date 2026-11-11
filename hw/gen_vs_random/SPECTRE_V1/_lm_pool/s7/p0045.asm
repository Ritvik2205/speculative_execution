.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
cmovnle rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
add al, -44
sub cl, -47
sub al, -89
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
