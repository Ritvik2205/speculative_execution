.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or dil, -113
jmp .bb_0.1
.bb_0.1:
xchg rdi, rsi
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx + rbx + 42]
sbb bl, -88
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 50
sub bx, di
and di, 63
sub eax, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
