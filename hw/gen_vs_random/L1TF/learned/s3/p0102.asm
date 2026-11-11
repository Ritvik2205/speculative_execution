.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 64
and ax, 60
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
jmp .bb_0.2
.bb_0.2:
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 28
dec bl
cmovp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
sbb rax, 717206440
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
