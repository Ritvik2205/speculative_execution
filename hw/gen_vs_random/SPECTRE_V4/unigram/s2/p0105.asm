.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
xchg rcx, rbx
xor dx, 7
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 95
btr rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
adc edi, -83
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
imul di
cmovnp ebx, edi
and rax, 37
neg bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
dec al
xchg bx, dx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
bt rdi, rdi
or al, cl
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
adc dil, -48
dec edx
mov ax, cx
xchg ebx, ecx
movsx eax, sil
cmovnbe rdi, rax
or ebx, edx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
bt ebx, 60
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sub sil, 71
test cl, 78
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
test eax, edi
bts rax, 43
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
test bl, al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
movsx si, dl
not dil
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
