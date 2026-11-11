.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
mov al, sil
setnz sil
add al, -117 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ebx
lea rdi, qword ptr [rdi + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
cbw
cmovs cx, dx
cmovnbe edx, esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
or rcx, 34
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
