.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 98
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 61
and rsi, rsi
test dil, al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovo ax, cx
and bx, 85
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
cmovnz dx, bx
xor dil, al
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
