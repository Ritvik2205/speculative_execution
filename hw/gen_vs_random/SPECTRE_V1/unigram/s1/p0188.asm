.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
add bl, -23 # instrumentation
setnle cl
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
cmp rdx, -19
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmp edi, 58
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
lea rdx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
loope .bb_0.1
jmp .exit_0
.bb_0.1:
neg esi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
