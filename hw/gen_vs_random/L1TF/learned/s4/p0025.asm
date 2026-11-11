.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 92
mov dl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 42
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and al, sil
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
