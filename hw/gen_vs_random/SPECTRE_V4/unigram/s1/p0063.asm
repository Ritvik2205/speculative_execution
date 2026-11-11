.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
add bl, -65 # instrumentation
adc dil, bl
sub ax, 23
and al, sil
and rdx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdx]
cmovnp bx, di
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
or bl, dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
imul dx, dx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 29
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
test al, bl
sbb esi, ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
cmp al, -122
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
cmovnz esi, edi
xor sil, cl
bt rax, rbx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and si, -74
btc ebx, edi
sbb cx, 106
cmovnp eax, edi
movsx rcx, sil
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
adc di, -78
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
inc rax
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], esi
imul ecx, edx, 38
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 18
bt rcx, 189
add rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
