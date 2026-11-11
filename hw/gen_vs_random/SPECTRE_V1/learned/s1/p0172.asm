.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
xor rax, -2035087432
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 27
or cl, al
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 19
cmovnp ecx, esi
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
imul edi, edx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
