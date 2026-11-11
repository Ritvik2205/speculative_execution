.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
sub al, dil
mov sil, 30
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg eax, edx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea cx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub al, -82
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
