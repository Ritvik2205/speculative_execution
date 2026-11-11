.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
sub dl, al
neg sil
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 23
bts rax, 25
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
cmovle rdx, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, 1938514106
test bl, -8
cmovnp si, si
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
cmp bx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
