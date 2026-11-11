.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 41
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnbe rcx, rdx
xor bl, -61
cmovbe ebx, edi
or sil, -49
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
xor dil, dl
xor al, 99
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test ecx, -1843375753
cmovnbe rax, rax
btc di, dx
cmovl eax, ecx
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
xor bx, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
