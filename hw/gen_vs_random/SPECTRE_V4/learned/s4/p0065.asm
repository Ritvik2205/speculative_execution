.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 9
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
btr di, 90
cmovno ax, ax
or cl, dl
or eax, 2007177863
or dl, sil
lea rcx, qword ptr [rdx]
cmovnb esi, ebx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, cx
cmp dil, dl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
or rax, 72
add si, 4
add bl, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 46
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
xor eax, 181978569
bt ebx, edx
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 23
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
or sil, 16
cmp ax, -15409
adc al, sil
xchg rcx, rdx
add al, 27 # instrumentation
sbb ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
add sil, 26
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
adc al, 36
test eax, -558243208
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
lea esi, qword ptr [rbx]
cmovnbe rbx, rsi
add di, -74
movzx rcx, bx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
