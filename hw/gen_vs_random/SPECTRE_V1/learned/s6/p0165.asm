.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
lea ax, qword ptr [rsi + rcx]
sub al, bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
mov al, cl
xchg ebx, esi
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
