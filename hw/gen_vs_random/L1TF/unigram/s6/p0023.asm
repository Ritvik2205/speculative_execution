.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
cmp rax, rdx
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
cmp cl, -89
cmovnz rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp rbx, rcx
jmp .bb_0.1
.bb_0.1:
mov ecx, -1856082135
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
