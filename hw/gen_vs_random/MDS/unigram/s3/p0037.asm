.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 80
and dl, -72 # instrumentation
not dil
or al, -61
cmovz rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and al, 42 # instrumentation
cmovz eax, ebx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and dl, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovnbe dx, di
bts cx, bx
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
not rdx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
