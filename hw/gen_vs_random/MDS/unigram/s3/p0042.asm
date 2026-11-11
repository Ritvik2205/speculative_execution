.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rdx, 71
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
test al, -59
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and sil, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 13
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 76
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
bt rdx, rbx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
or cl, al
btc rdi, 6
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
