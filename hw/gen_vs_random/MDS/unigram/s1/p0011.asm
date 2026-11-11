.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 48
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
cmovnz eax, ebx
xor dil, dl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
cmovs bx, ax
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
cmovp eax, eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 19
xor cl, 15
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 76
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
test rsi, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
