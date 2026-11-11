.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
lea edi, qword ptr [rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
jmp .bb_0.2
.bb_0.2:
add cl, -84 # instrumentation
xchg rdi, rdx
movzx cx, sil
sbb al, -47
xor di, -43
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
sbb cl, -104
cmovp ecx, ecx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 82
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
cmovnb ax, ax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
or dl, bl
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
test bl, 24
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovnle rdi, rdi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
mov rsi, 59
cmp dl, al
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
cmp rax, -227205962
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
