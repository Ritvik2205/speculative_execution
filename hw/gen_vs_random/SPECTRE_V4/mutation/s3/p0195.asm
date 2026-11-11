.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 1827025056
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
imul ebx, eax, -112
movzx rdi, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
btc edi, 125
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
btr edx, 160
neg rbx
sub dx, si
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
xchg cx, si
sub bl, cl
test al, -38
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
cmovns rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
neg ax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and edi, edi
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
movzx ecx, si
inc eax
mov al, al
xor bl, 126
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, -12
sub eax, -529389957
adc cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or dil, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
