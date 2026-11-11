.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
cmovp rax, rsi
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
sbb rsi, 29
jmp .bb_0.1
.bb_0.1:
setl sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
sets sil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
cmp dl, bl
lea rbx, qword ptr [rax + rbx + 12]
btr dx, ax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmp sil, -11
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
