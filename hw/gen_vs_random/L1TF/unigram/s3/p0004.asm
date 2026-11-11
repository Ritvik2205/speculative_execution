.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdi, 75
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
mov cx, dx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
lea eax, qword ptr [rcx + rsi + 52]
imul bx, dx, 25
btr dx, si
add sil, bl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 72
neg rdi
add dl, 76 # instrumentation
sbb ax, 10551
and ax, 37
and dil, -22
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
lea rsi, qword ptr [rsi + rcx + 83]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
