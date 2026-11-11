.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rbx]
cmp esi, esi
cmovbe eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 19
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
mov dl, cl
xor sil, sil
sbb ax, bx
sbb rbx, -117
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
mov ebx, 675401645
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
