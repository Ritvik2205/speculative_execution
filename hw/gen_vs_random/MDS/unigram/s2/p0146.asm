.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -41
or ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
test edi, -1252846009
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 36
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
cmovz di, bx
and dl, -26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and dl, 93 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
cmovo eax, eax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
