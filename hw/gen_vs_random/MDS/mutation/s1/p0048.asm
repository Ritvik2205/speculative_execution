.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, bx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
cmovnb edx, eax
test bl, -9
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or bl, dl
and eax, 561041355
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and dl, 8 # instrumentation
cmovle ax, di
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
btc cx, 115
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
test rax, -708244380
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
