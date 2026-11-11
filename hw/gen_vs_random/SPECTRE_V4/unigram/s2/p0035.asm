.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
movzx ecx, dil
cmovnz edi, esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 57
test dil, dil
add sil, 3
cmp al, 116
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
cmovs ecx, ebx
xor rsi, -102
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
xor dl, cl
cmp sil, dl
mov eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
adc edx, -86
cmovnz ax, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
cmovp edi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
add al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
mov cx, -22668
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
or rdx, 1
xor cx, -80
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
test rax, rdx
cmp bx, 113
add ebx, -57
xor dil, -23
sub sil, 71
sub dil, dl
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
cmovno eax, ecx
or dl, dl
add rdx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
