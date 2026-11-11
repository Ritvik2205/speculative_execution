.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
add edi, 11
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 63
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 42
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 34
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 82
sub dil, -10
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 65
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ebx
cmovz dx, dx
sub si, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul bx, dx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovs dx, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
or al, 96
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
cmovb ebx, edx
add bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
not di
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
sub ebx, ecx
cmp al, 19
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
sbb di, si
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
