.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
mov dx, 26
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
xchg bl, sil
lea rbx, qword ptr [rax + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovo rdi, rax
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
add dil, 88
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
