.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 35
or rdx, -109
test rax, -708244380
xor cx, ax
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 95
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and al, 67 # instrumentation
cmovl rbx, rax
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
or al, 24
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
bt di, cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
