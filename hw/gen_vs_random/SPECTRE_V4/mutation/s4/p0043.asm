.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
cmp dl, sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
btr rbx, rbx
cmovnz rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
imul rcx, rax
sbb bl, cl
sbb eax, 1002977021
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovno eax, edi
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
cmp rax, -1547540200
or cx, 23
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
cmovnb ebx, edx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmp al, 109
movzx dx, dl
cmp ax, 26170
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, -104
sub cl, dl
bt dx, bx
and dl, al
cmp al, 98
bts cx, 135
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
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
or edx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
