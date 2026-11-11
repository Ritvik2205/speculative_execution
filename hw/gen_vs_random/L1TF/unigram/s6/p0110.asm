.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
xchg ecx, eax
add sil, 100 # instrumentation
lea ax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
lea rsi, qword ptr [rsi + rdx + 71]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
lea edi, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sbb al, cl
xor di, 80
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
