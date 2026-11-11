.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor cl, 88
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor al, 23
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp rdx, rcx
imul ax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovle esi, eax
sbb eax, -920840872
sub cl, 92
movzx edx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts bx, 102
add dl, -91 # instrumentation
cmovl rbx, rcx
add cl, -106 # instrumentation
cmovno rbx, rax
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or dil, 89
and cl, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and dl, dl
sub esi, -10
and ax, 25163
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
xor dl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
mov ebx, esi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
