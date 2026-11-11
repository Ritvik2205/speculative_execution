.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc di
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
setnp sil
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
add al, -95 # instrumentation
lea ax, qword ptr [rdx + rdx + 89]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
bts si, bx
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
