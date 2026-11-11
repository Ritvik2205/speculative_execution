.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
and al, -119
adc sil, -115
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
adc al, 6
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xchg eax, edi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
lea rdi, qword ptr [rsi]
dec rbx
movsx edi, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
