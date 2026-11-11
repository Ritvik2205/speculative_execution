.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -1465665890
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
cmovnbe rdi, rsi
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -88
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnbe ebx, esi
add al, al
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
