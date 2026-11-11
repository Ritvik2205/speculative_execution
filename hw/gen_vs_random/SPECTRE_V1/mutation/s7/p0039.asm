.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
adc sil, sil
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
movzx cx, bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
btr ax, 89
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add al, dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
imul dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
