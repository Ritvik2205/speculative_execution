.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
imul rax, rsi
neg rbx
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
cmovp eax, edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
sub rcx, -90
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
cmovle rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
add dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
