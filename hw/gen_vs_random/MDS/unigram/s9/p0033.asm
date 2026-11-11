.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
test rbx, 96
and esi, esi
or di, 0b1000000000000000 # instrumentation
bsr di, di
btc rdx, rdx
cmovo esi, eax
or esi, -110
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
cmovnb bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
btr dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
or dil, -41
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
