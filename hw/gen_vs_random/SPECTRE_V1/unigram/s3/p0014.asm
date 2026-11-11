.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -61
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
lea rcx, qword ptr [rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 58
add dl, 63 # instrumentation
cmovle cx, di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 70
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
cmovp edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 64
cmovp edi, ecx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
