.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs eax, ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
mul ax
mov edx, 26
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 71
cmovns ecx, ebx
cmp bl, 13
add dil, -75 # instrumentation
adc dil, 4
mov rbx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 83
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
mov esi, ebx
test al, cl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and dil, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmovo bx, dx
bts ebx, 22
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add cx, cx
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
cmovnbe bx, ax
xor al, sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 73
cmovle bx, cx
imul cl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
adc ebx, 117
adc edi, 14
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 53
add si, 4
add bx, 110
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 68
cmp rsi, 73
add rax, rbx
sub bl, dl
cmp bl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
