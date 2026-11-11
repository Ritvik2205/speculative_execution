.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
add cl, -94 # instrumentation
setnb bl
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
movsx esi, bl
mul al
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
add dl, 125
cmp eax, -234754587
cmovno cx, ax
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
xor ax, 30996
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
or rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
