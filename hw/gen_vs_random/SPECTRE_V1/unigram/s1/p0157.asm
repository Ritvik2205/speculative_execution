.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
lea ebx, qword ptr [rbx]
cmp al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
add al, -95 # instrumentation
lea ax, qword ptr [rsi + rsi + 59]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs bx, ax
not ebx
xchg bl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
add dx, bx
movsx bx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
