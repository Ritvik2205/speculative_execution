.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
add cl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rcx]
cmp eax, 951020724
cmovno cx, ax
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
or rdi, rdx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
xor ax, 30996
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add cl, -94 # instrumentation
setnb bl
mul al
add dl, 125
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
movsx esi, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
