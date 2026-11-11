.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -20 # instrumentation
adc bl, dl
cmp cl, -80
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or rdx, rdi
adc bl, 127
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
cmovp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
neg bl
test dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
btc rax, 124
sbb al, -14
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
or al, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sub dil, -11
or ax, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmovs rax, rsi
or al, al
xchg rsi, rax
xchg si, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
or al, -50
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
btr bx, 11
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, -1145483375
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
btc esi, 63
sub rbx, 101
cmovnb di, ax
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
