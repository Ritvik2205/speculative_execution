.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
sub sil, -87
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
cmp rsi, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
sbb rax, -1477844571
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 39
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
mov rsi, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
