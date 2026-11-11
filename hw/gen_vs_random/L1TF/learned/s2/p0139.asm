.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
sub bl, dl
lea si, qword ptr [rbx + rdi + 94]
or rsi, 11
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 73
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and dil, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
