.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, 94
cmovp dx, si
sub ecx, ebx
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
cmp bx, 45
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnbe rbx, rdx
cmp rax, 1524061352
add sil, dl
test edx, 573099753
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
not dx
movsx rcx, bx
sbb al, dil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and dil, al
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
cmovl rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
sub cl, cl
imul rdi, rax
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
xor rbx, 16
cmp rdx, 30
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
test sil, 92
sub cl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 29
test rdx, 51
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
sbb eax, -984782068
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
imul bx
or al, dil
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 26
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
add cl, 31
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
