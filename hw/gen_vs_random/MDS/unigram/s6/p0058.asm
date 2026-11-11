.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edi, 230
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 78
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and cl, 125 # instrumentation
cmovo ax, cx
and ax, 13090
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 11
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
cmovbe rax, rsi
and ax, 31082
or al, -61
test di, 88
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
cmovz esi, ecx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or eax, -1777347252
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
