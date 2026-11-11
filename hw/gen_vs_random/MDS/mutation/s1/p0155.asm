.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, edx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmovnp eax, esi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
bts rdi, rcx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
btc cx, 115
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
test rax, 1214712583
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
btc si, bx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
cmovnb edx, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dl, 8 # instrumentation
cmovle ax, di
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
test bl, -9
or bl, dl
and eax, 461212071
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
