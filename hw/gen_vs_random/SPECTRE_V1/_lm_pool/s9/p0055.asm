.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 95
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
test cl, -62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub dil, -111
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
lea edi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
