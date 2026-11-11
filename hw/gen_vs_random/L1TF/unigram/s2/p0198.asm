.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, 2
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 55
cmovl ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
setle bl
lea eax, qword ptr [rbx + rsi]
or sil, -44
lea edx, qword ptr [rdx + rsi + 16]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
