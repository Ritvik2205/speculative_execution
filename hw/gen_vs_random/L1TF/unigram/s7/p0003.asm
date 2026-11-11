.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 47
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
sub dl, sil
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 39
jmp .bb_0.1
.bb_0.1:
test bx, 25
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
sub esi, -89
adc rbx, 72
test sil, 29
and al, -68
sub sil, -99
seto cl
add al, -80
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
