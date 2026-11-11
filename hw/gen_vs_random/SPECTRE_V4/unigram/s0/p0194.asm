.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rax, di
cmovb cx, cx
xchg bx, dx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
cmp edi, -104
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 65
test ecx, 89
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 62
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
cmp dl, 16
or dl, 56
xor bl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 51
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rbx, 110
xor dl, dl
and ebx, 67
cmp cl, dl
sub sil, -50
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
or sil, al
cmovb esi, eax
imul sil
cmovnp rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
sub rcx, 100
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and sil, dil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
test ecx, 74
xchg di, bx
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
or dil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
