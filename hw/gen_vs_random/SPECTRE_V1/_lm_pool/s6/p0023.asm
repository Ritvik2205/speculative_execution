.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
cmp eax, 100
add al, 10
xor al, -119
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
mov cl, bl
sub dil, -111
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dil, dl
jmp .bb_0.3
.bb_0.3:
setnz cl
cmp sil, dil
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
