.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, -80
xchg bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
imul di, dx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 12
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
add bl, -45 # instrumentation
cmovs rax, rax
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
xor ax, -24879
imul bl
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmovno rdi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
