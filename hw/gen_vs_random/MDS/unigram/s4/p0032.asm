.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
bts esi, esi
cmovnbe rdx, rcx
and al, 75
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
cmovs dx, bx
or ax, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and bl, 107 # instrumentation
cmovbe bx, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
btr eax, eax
cmovbe ecx, esi
cmovno rbx, rcx
cmovs edi, edx
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
