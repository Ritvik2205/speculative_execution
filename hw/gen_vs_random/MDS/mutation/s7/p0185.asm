.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or al, cl
cmovnl di, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
bts cx, 191
and bl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
cmovnb di, bx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test rax, 337705873
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
btc cx, 115
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
test rax, -648054011
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
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
test bl, -114
or bl, dl
and eax, 33
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
