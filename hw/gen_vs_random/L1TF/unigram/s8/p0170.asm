.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
lea edx, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 96
add dil, -7
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
sub dil, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
inc sil
movsx ebx, sil
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
neg sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
sbb cx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
