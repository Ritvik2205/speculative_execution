.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
lea di, qword ptr [rdi + rdi + 8878]
cmovs rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
cmp bl, 3
mov di, ax
add cl, -84 # instrumentation
xchg rdx, rax
xor dl, -91
setnbe dl
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
imul ax, bx
lea rcx, qword ptr [rax + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
