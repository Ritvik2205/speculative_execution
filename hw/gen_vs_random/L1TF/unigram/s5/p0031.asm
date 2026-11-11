.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 89
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
adc sil, 74
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
cmp ax, -31327
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
imul al
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
btc cx, dx
add bl, 97 # instrumentation
cmovnbe ebx, eax
add cl, -72 # instrumentation
cmovp ebx, ebx
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
