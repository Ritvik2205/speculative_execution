.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
add al, -117 # instrumentation
not rax
lea edx, qword ptr [rdx]
or rax, -1571963467
movzx eax, al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
lea rax, qword ptr [rax]
dec rdx
xchg al, dil
test sil, 47
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
lea rdi, qword ptr [rdi + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 71
xor ecx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
