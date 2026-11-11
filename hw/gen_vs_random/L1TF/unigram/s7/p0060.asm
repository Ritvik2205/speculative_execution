.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp si, 37
mov bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
mov bl, al
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
xchg rdi, rdx
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
add al, 39 # instrumentation
cmovnb ax, cx
add al, -117 # instrumentation
setp sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
imul al
cmp rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
setb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
