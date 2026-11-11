.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -1420345926
imul dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 44
lea edx, qword ptr [rbx + rbx + 41]
cmovnl eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
cmovb ecx, esi
add dl, 47
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
sub al, -89
sub dl, -12
cmovs edx, eax
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
add al, bl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edx
or edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
