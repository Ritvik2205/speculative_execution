.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
or rdx, rsi
test rax, 1207043993
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
btc cx, 115
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test bl, -114
and dl, 8 # instrumentation
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
cmovnb edx, eax
btc si, bx
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
and eax, 33
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
