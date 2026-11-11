.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, cl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub al, 9
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and cl, dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
cmp cl, -89
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
