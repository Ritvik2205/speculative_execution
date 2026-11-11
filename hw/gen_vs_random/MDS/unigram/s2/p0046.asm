.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
xor dil, cl
cmovnz rbx, rcx
and cl, -23 # instrumentation
cmovno ebx, eax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
bt si, 23
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
bt eax, 117
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
not al
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
bt edx, 53
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 75
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and sil, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
