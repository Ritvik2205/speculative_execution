.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30996
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and cl, sil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test al, -70
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 14
sub al, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
lea eax, qword ptr [rcx + rax + 59]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
