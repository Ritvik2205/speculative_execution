.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or bl, -52
xor dl, al
jmp .bb_0.3
.bb_0.3:
and rdx, 33
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and dl, -73
bt bx, ax
and ax, 13090
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
