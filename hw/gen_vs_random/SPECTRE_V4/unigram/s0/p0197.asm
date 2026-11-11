.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
adc sil, al
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
cmp bx, 34
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
and al, sil
add sil, sil
or al, -71
movzx eax, sil
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 77
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 96
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and ecx, 53
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
add dl, al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 35
test cl, -89
inc edi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
sbb eax, -984782068
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
inc bl
bts rax, rax
xor dx, cx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
cmovle esi, edi
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 63
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
adc dl, bl
and dl, 39
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
movsx rsi, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
