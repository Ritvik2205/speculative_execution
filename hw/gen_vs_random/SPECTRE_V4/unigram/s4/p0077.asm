.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ebx
or rdi, rdx
sub al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
adc edi, 31
sbb dil, dil
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
cmovnp eax, ebx
mov dil, dil
cmovb rcx, rdx
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor dx, di
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
add cl, -82 # instrumentation
sbb dx, bx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
bt edi, 83
cmovnb ebx, ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
imul bl
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
sbb bl, 57
or eax, ebx
or cx, dx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnb ecx, esi
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
cmp sil, 88
btc si, 10
cmp sil, 88
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
