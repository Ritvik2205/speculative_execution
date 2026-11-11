.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
xor ax, 24729
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
cmovl rdx, rcx
or sil, -8
or ax, 28091
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
test cl, 18
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
