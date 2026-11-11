.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, 39
sub esi, ecx
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or dil, sil
movzx rdi, bl
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
add dil, dil
sbb bl, bl
add esi, edi
add dl, 31 # instrumentation
cmovnl ax, ax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
cmp rsi, 91
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and bl, dl
cmovnl rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
cmovs rsi, rcx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and al, dil
cmovnbe rbx, rbx
bts eax, 209
mov rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
or sil, cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 67
cmovp di, cx
cmovnb rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
adc al, 36
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 49
imul rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
add bx, 110
sbb rax, rbx
add rsi, 36
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
cmovo rdx, rax
cmp sil, 88
or dl, cl
xchg rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
