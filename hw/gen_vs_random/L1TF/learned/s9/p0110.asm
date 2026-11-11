.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, si
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 66
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
imul al
xor sil, 64
jmp .bb_0.1
.bb_0.1:
add dl, 65 # instrumentation
cmovo rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
adc esi, -41
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
sbb dl, bl
sub cx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
