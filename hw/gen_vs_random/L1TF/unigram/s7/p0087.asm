.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
sbb edx, 23
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
cmovbe rbx, rdx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and al, dl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
add bl, -109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
add dl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
xor ax, 30996
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
