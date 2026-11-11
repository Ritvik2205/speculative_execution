.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rsi, 17
not sil
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
or ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
cmovz dx, dx
and rax, -2058103810
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
cmovnbe eax, esi
btr edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
