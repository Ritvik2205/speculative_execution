.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 70
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
cmp cl, dil
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
cmovnp si, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
jo .bb_0.1
jmp .exit_0
.bb_0.1:
adc rsi, 110
lea cx, qword ptr [rbx + rax + 90]
lea rdx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
