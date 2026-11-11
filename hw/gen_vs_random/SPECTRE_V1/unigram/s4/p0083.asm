.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 54
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sub al, -66
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, -103
bt dx, ax
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 89
adc cl, dl
bt rax, rax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and cl, -57
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
