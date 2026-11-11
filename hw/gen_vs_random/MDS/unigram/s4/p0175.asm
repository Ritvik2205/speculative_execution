.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test edx, -1561252782
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and cl, 78 # instrumentation
cmovs dx, ax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
cmovb edx, eax
cmovz edx, esi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and al, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
bts rax, 77
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and bl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
bts ax, 22
test ebx, -2015966884
test rdi, 48
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
