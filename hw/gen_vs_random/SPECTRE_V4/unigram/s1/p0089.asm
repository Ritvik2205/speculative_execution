.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
add dil, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rdi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdi]
sbb dil, 94
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
cmovnz ax, bx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
xor al, al
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
or dl, al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 17
cmovbe rsi, rcx
cmovle di, si
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
xor cx, -80
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 96
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
or cl, dl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp cl, -80
xor bl, 126
not dx
adc rcx, rsi
sub edx, ecx
test eax, edx
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
imul si, cx, 4
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
or dl, -26
mov cl, 1
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
