.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
cmovno rax, rsi
lea rax, qword ptr [rsi + rax + 60]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
test bx, di
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
adc sil, 57
lea ebx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
