.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rax, rdi
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
sub esi, ecx
sub dl, 43
sbb dl, -99
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 25
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or dl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 25
xor ax, si
adc bl, 89
test rbx, 36
or sil, bl
test eax, -818909344
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
adc eax, -79
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 45
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
add ax, 28666
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
add cl, 122 # instrumentation
cmovz rcx, rax
imul rcx, rdx, 24
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cmovs di, bx
add al, 5
btc rax, rcx
add rbx, 71
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
test di, 92
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
bts eax, 209
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
add dil, 82
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
mov rdx, rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and al, bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 58
sub esi, ebx
and sil, al
movsx edx, sil
mov ebx, 89
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
or esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
