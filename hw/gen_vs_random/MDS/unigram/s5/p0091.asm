.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, ax
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 47
cmovo esi, edx
or sil, al
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
or al, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 41
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
not eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 47
btr edx, 255
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
bt rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
bts edi, 248
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
