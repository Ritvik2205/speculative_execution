.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
cmovnp dx, bx
cmp dil, 24
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
adc al, -103
setb al
sub al, sil
cmovo bx, ax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
