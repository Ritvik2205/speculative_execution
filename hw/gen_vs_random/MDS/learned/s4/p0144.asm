.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
cmovnp bx, cx
cmovz rbx, rdi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
not si
jmp .bb_0.2
.bb_0.2:
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
or cl, 10
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
btr rsi, 73
and sil, -26 # instrumentation
cmovnp rcx, rsi
add cl, -82 # instrumentation
sbb si, di
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
or cl, al
and bl, 6
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
sbb cl, 85
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
adc al, dl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
add si, 29
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovnbe edi, esi
bts rbx, 57
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 59
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or ebx, edx
cmp al, sil
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
movzx rcx, di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
