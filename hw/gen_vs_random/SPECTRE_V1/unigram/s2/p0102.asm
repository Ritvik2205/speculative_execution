.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl ecx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
movsx rax, di
or dx, di
lea di, qword ptr [rdx + rsi + 74]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 125 # instrumentation
adc al, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
dec esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
