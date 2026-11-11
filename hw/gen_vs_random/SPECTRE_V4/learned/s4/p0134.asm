.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 59
or esi, 73
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
mov rdx, 66
mov al, bl
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 80
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and dl, -107 # instrumentation
cmovz rax, rbx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 65
cmovz ecx, eax
bts esi, 241
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
or dl, dl
sbb cl, sil
add dl, -26 # instrumentation
btr edx, 30
and sil, al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and sil, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 63
sub cl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovb edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or ebx, esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmovp esi, edx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
not bl
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
imul esi, ecx
xchg rsi, rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
btc dx, 16
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
cmovl rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
