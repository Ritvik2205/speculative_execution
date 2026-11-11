.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb dl, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
bt eax, ebx
cmovnp ax, di
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
