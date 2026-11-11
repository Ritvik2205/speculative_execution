.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
setnle al
and sil, 111
test dil, -116
xchg al, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno cl
sub rdx, 15
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
