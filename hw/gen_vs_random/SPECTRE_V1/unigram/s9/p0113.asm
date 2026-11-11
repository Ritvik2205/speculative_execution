.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
cmovs cx, si
cmp dl, 71
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
mul cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
add bl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
setnle bl
cmp al, 53
lea edx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
