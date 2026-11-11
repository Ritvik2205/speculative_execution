.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwd
sub cl, bl
sbb eax, 62
add sil, 36
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, 45
lea edi, qword ptr [rsi + rdx + 42]
lea rbx, qword ptr [rbx + rsi + 31]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 60
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
or al, al
xor dl, 70
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
