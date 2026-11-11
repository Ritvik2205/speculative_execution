.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
xchg edi, ebx
test ax, -13885
movsx di, bl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
sbb bl, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
test ax, -13885
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
