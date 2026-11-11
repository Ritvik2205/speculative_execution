.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
cmovz ax, ax
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and bl, dl
cmovno ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and di, 91
or cx, 49
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
test rax, 1949278494
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
xor eax, 1640090871
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
bts edx, ebx
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
