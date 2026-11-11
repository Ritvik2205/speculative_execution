.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 116
and rbx, 69
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
mul edx
movsx edx, di
bts eax, 209
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
bswap rdx
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
test ebx, -595096626
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
cmovnbe rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
cmovnbe cx, ax
or bl, dl
bts ebx, esi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 82
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 95
cmp ax, -15031
add dl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
cmp al, bl
add edx, 74
cmovs rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
movsx ecx, si
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 11
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
add cl, 122 # instrumentation
cmovz rdi, rax
cmovnz ebx, esi
cmp rdx, 32
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovl rcx, rdx
add bl, -109 # instrumentation
sbb esi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
