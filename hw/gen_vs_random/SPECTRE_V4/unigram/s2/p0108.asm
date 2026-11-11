.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 51
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 82
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
cmp edi, -104
bts rdx, 42
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
sub cl, 116
sbb al, -47
mov al, al
or cl, 92
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
cmovnp cx, dx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
cmovnp edi, edx
add al, al
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
sub cx, 89
mov rdi, 88
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 60
add bl, -75 # instrumentation
adc bl, 40
add dil, dl
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
add bl, al
adc eax, -79
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
sbb ebx, 28
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
test bl, sil
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and cl, 58
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
sub bl, dil
cmovnbe rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
