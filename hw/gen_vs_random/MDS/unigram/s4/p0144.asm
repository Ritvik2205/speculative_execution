.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -372470678
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and cl, -71
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
test bl, -14
xor dx, 54
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
btr esi, 39
and cl, 79
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
cmovnbe rax, rbx
and al, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
xor rax, -1657511731
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
