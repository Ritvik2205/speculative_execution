.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 33
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and dl, 8 # instrumentation
cmovle ax, di
or bl, dl
or rdx, rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
cmovnb edx, eax
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
btc cx, 115
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test bl, -9
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
btc si, bx
test rax, -363019044
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
