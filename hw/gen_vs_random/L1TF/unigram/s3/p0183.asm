.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
sub cl, 86
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
imul esi, ecx
adc dl, bl
inc eax
sub si, dx
sub cx, 33
add al, -102
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
cmp eax, 951020724
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 7
or dl, -67
sub al, bl
cmovns ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
