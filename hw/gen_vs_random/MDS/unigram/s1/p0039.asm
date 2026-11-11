.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
or cx, -42
or rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 8
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and dl, 57 # instrumentation
cmovnb cx, dx
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnz di, si
btr rax, rsi
cmovb si, di
and bx, bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and edi, 23
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test ax, -11534
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and cl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
