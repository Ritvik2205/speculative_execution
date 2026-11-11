.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 11
cmovle edx, eax
or dl, bl
and dil, 102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
not edi
jmp .bb_0.1
.bb_0.1:
cmovnz si, dx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
btc bx, 179
and cl, -49 # instrumentation
cmovno cx, si
cmovz ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovno eax, edx
cmovns rdx, rsi
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
