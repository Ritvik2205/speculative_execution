.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 54
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, 25338
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
sub rdx, rdx
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, -897763206
adc bl, al
test al, 72
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -865916088
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, 89
sub cl, dl
bt dx, bx
and dl, al
cmp al, -122
bts cx, 158
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
xchg ecx, edi
imul sil
add eax, esi
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test rdi, rax
cmp bl, 12
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
or edx, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
