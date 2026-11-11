.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 100
bts rdx, 52
sbb bl, al
and cl, 58
cmovns eax, ecx
test cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 79
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
sbb bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
add cl, 122 # instrumentation
cmovz rcx, rdi
cmovnp edi, edx
cmovns di, bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
sub esi, 94
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
add dl, dl
cmovs si, bx
add rdi, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
cmovnb edx, ecx
or dl, 56
dec ax
and bl, sil
cmp sil, cl
cmp ax, 23131
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 24
sub cl, sil
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
not si
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 99
bt eax, ebx
mov dil, dil
movsx rdx, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
