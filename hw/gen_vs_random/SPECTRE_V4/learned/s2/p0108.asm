.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and dil, 96
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
add cl, -42 # instrumentation
adc sil, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
test ecx, 97
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
cmovs ecx, edi
cmovo rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and rcx, -102
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add ebx, 3
cmovnz edi, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
test bl, bl
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add edi, esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
adc eax, -1513455903
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or al, cl
cmovb edx, eax
movsx rdi, cx
cmovs di, di
sub rdx, 22
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
