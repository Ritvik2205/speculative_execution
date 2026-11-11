.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
movzx edi, al
sub dil, -10
cmovle esi, eax
test sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and bx, 95
adc cl, al
btc bx, 68
cmp al, -23
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
and bl, dil
not dl
neg rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
movzx eax, cl
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
add bl, -72
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
cmovb ecx, eax
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
bt ebx, eax
imul sil
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bts eax, eax
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
cmovnb edi, eax
or cx, dx
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
sub dil, -10
sub al, al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
sbb esi, 23
movzx rbx, di
add sil, bl
cmovnbe rax, rsi
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
