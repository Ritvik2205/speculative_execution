.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
mul al
movsx esi, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
lea cx, qword ptr [rcx]
add cl, -94 # instrumentation
setnb bl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
cmp eax, 951020724
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
add dl, 22
cmovno cx, ax
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
or rdi, rdx
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
