.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
or dx, 6
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
xchg rdx, rbx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
test sil, bl
xor dl, 78
add sil, 26
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
add rdx, rax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
xor bx, ax
xor al, 29
xor rsi, -3
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovnl si, bx
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
xor al, 56
add cx, cx
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
sub dl, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
add sil, 26
xor dl, 84
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
mov bl, bl
or sil, 27
sbb esi, 24
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
add dl, 41
sub al, 50
cmovle rdi, rsi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
or eax, 2007177863
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
