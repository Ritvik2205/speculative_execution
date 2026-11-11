.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
neg dl
imul rbx
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
test dl, 84
xchg eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
xor ax, 32760
or rcx, 6
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
