.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
test al, sil
lea dx, qword ptr [rbx + rdi + 84]
not rbx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
add cl, -20
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
add al, -9 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 54
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xchg rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
