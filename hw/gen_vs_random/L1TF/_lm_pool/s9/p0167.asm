.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
test al, -84
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
btc di, dx
xor bl, dl
xor dil, bl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
