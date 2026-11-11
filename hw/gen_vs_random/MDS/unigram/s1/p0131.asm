.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 79
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
or sil, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
cmovnp rsi, rdi
jmp .bb_0.1
.bb_0.1:
cmovnz edi, eax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
test cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 41
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
and dx, 60
or cx, -42
or cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
