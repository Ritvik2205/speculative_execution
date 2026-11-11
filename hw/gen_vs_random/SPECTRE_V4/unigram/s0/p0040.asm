.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, 41
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
bts rcx, 71
cmovno rbx, rdx
cmp rdx, -49
or al, dl
cmovnp eax, edi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 19
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
or dl, 71
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
adc dx, 65
cmovs si, di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
mul dx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
add dl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
adc rbx, 60
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
sub rdi, -34
and di, ax
and bx, 72
sub ebx, edx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
bt ebx, 15
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 80
test dil, -5
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
adc al, 43
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
adc bl, 127
add cl, sil
cmp rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
add esi, ebx
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
neg rbx
sub sil, al
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
sbb al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
