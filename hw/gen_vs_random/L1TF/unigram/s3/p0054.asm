.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
lea rax, qword ptr [rdi + rsi]
test eax, 1939511779
lea cx, qword ptr [rbx + rax]
cmp bx, 91
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 43
sub cl, 32
sbb edi, 17
lea dx, qword ptr [rdx + rbx + 88]
mov di, 34
jmp .bb_0.1
.bb_0.1:
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
dec al
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
