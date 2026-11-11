.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
adc ax, 29444
and cl, -128
and dl, -11
bt rdx, rax
cmovno rbx, rax
adc dx, si
bts dx, ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
movsx bx, sil
add cl, 53 # instrumentation
cmovnbe esi, edx
not rax
cmovb rdi, rdi
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
or dl, dl
cmovo dx, ax
add dl, -4 # instrumentation
cmovp si, bx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
cmovnz esi, edx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and sil, -84
mov dl, al
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
bt rsi, 153
cmovnle dx, bx
imul dx
xor bx, -65
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
sub al, 54
sub al, bl
sbb sil, 24
add dil, 87 # instrumentation
cmovz eax, edi
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 87
cmovnp rax, rsi
sub edi, 85
and eax, -1555813586
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
add al, al
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
cmp ax, dx
mov rdi, rdi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
