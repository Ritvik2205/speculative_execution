.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, 95
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 43
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
test ebx, 11
cmovs ebx, esi
adc al, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
btr ax, 185
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
test eax, -385619864
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
