.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
add dl, -25 # instrumentation
cmovs rax, rsi
bts rsi, 236
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
movsx ecx, bl
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add dl, dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
sbb di, -105
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
adc al, -86
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
test rdx, -1074289902
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
mov edx, -950755477
mov dil, 9
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
sbb rbx, rcx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and al, al
cmovl cx, di
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnb rdx, rcx
add edx, 89
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 32
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 74
mov ecx, ebx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 28
xchg esi, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
xchg rbx, rdi
test al, 57
neg rsi
cmovz rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovbe ecx, ecx
and al, -12
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
