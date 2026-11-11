.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
mov dl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or bl, 11
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
xchg rax, rcx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea eax, qword ptr [rsi]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
