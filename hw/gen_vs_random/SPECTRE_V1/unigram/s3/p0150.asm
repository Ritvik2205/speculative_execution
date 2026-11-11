.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -51 # instrumentation
cmovno rbx, rsi
bswap ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
add di, 44
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 63
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
or ecx, 55
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
or bl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
