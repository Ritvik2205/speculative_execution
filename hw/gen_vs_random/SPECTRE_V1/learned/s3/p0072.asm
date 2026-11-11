.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xchg sil, sil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmovl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
setnb cl
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
sub cx, 99
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
imul ax
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
setnz dil
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
