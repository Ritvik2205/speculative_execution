.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ecx, ecx
add cl, -82 # instrumentation
sbb bx, dx
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
movzx eax, ax
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
sub rdx, 22
test rbx, 75
inc eax
cmp si, 81
xor al, cl
adc eax, -1513455903
add sil, 26
sbb cl, 20
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 10
neg ebx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp rbx, 44
test edx, 573099753
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add dl, bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 85
cmp rcx, 85
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
movzx rdx, si
movzx esi, si
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
or edi, eax
add sil, 26
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 25
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 54
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
