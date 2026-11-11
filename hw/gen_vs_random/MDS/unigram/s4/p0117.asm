.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
and cl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
or bl, al
and esi, esi
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
btc rax, 110
or rsi, 32
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
or rax, 1461812833
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
test cl, dil
xor sil, al
cmovl esi, ebx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovs di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
