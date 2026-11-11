.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
sub bl, -19
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor sil, dil
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub bl, al
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
