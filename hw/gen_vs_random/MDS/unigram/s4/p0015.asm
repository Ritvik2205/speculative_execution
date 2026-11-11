.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
cmovs ax, si
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and ax, 339
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and bl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
or eax, ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xor sil, dl
xor dx, 36
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
or bl, bl
and eax, 461212071
bts ebx, ebx
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
btr eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
