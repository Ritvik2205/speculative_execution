.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb ecx, 91
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
cmovnbe rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
mov rax, rcx
cmovb edi, esi
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
xchg rdx, rcx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
adc ax, ax
or cl, 30
add bl, -72
sub bl, 17
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
sub dl, al
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
dec rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
xchg rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add cl, -21 # instrumentation
adc rdi, 5
cmp bl, 13
and rax, 7
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
cmovnle cx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 3
sub sil, -50
not ebx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 56
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 92
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 65
add ax, -13169
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
cmovp rdx, rdi
cmovnp rdx, rbx
add rcx, 92
cmp al, 19
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
