.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
add dl, 109
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
btr ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
add sil, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
test rbx, 1219566903
or si, -84
test eax, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
sbb dil, 69
add bl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
add cl, -122 # instrumentation
cmovp ax, ax
or di, 122
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
or ax, -13633
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
sbb ebx, -54
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
xor bl, 27
mov rcx, 24
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
mov eax, -1056201206
sub si, -92
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
test ebx, 36
and sil, al
mov dil, dl
sbb sil, sil
sub cx, di
cmovnz bx, si
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor rdi, -72
sbb edi, -94
xchg al, al
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
