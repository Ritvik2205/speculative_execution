.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 37
and rax, -1701787862
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
bts di, 73
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
bts rcx, 90
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
test dl, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 61
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
cmovl esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
