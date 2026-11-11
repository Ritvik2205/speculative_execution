.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add bl, 119 # instrumentation
cmovle dx, cx
xchg dl, dl
test rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 94
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
sub ax, 7297
cmovz si, bx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
cmp cx, 30
cmovb eax, edx
lea rbx, qword ptr [rbx]
cmp dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
