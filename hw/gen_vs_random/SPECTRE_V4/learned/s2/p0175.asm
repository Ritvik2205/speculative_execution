.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
cmp dl, al
cmp rsi, 74
test sil, 68
or dl, dl
xor si, -73
xchg ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rcx, -20
cmp rax, -47
xor al, 106
sbb al, sil
neg sil
or dl, sil
sub al, -84
xor sil, 98
xchg esi, ecx
adc dl, 38
lea eax, qword ptr [rcx]
and al, dil
and dl, -53
inc bl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
sbb cx, 29
and cl, -101
lea ax, qword ptr [rcx]
or al, -83
test dil, -83
or ax, 28571
or al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
