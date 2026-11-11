.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
adc rbx, 75
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
xchg edx, esi
movzx rdi, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
and cl, 28
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
btc cx, 31
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
lea rdi, qword ptr [rbx + rdi + 25]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
