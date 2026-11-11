.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, 24210
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 58
btc ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
bswap edi
inc rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
lea esi, qword ptr [rcx + rcx + 21]
add cl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
lea edi, qword ptr [rdi + rax + 13]
sbb dx, 48
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 86
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
