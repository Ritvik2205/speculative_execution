.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edi, ebx
not cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdi, 36
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
cmovno rax, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
btr di, ax
test dil, sil
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
bts edi, 248
cmovnbe bx, si
test dx, 16353
xor al, bl
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and al, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
