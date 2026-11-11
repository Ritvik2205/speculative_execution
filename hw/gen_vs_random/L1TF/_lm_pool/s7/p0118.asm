.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -56
xor al, 16
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
setnle dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor dil, -42
xor rdx, 122
jmp .bb_0.2
.bb_0.2:
test bl, al
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
sub dil, -39
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
