.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
bts edi, edx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc rcx, 14
add dl, dl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xchg rcx, rax
cmovns eax, esi
or sil, sil
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
