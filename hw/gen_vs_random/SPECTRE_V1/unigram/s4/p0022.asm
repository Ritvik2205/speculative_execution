.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
cdq
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
lea ax, qword ptr [rcx + rbx]
xchg edx, ecx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
cmovnl ecx, edx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add rax, 977059290
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
inc rdx
neg sil
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
sub rax, rdi
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
