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
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
movzx cx, bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
xor dil, 2
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
sbb rcx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
