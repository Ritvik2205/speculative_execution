.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 18
cmovs eax, ebx
cmovnle dx, ax
imul ebx, eax, 93
add cx, cx
add sil, bl
xor sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
mov rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
mov dl, dl
neg si
cmovp dx, di
cmovle eax, ecx
sbb edi, eax
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
or ecx, 8
mov sil, 74
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul cx, dx
cmovnbe rdx, rax
cmovnle bx, dx
cmovo eax, edx
cmovle si, dx
btc rax, 9
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 86
add cl, dl
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
neg sil
cmp al, 19
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 64
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
cmovle rbx, rax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, edx
xor cx, 29
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
add eax, -1796699558
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
or dl, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
