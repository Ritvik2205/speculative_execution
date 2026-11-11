.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
setno dil
lea ax, qword ptr [rax]
sbb esi, 89
movsx bx, dl
test dl, -36
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
cmovle ax, bx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
sub al, cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
lea rax, qword ptr [rcx + rcx + 78]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
