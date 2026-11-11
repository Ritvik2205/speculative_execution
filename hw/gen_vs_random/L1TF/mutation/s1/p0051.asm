.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
sub sil, 45
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
lea ebx, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
or rdx, -98
inc sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
btc cx, 54
lea eax, qword ptr [rbx + rdi + 265]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
