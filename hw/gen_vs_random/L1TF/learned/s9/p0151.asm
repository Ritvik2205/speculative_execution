.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
or ax, -10161
cwde
test bl, 84
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
xor ax, 0
lea rbx, qword ptr [rcx + rsi + 15]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
