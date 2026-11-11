.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 71
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
mov dl, -34
test ebx, 1263899340
cmovz ebx, ecx
dec rsi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
lea di, qword ptr [rdx + rbx + 20]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
bts di, 36
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
test al, dl
imul cl
or dl, 88
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
cmovp si, si
xchg rcx, rdx
add sil, 110
sbb al, 32
bt ecx, 58
xor edx, edi
sub rbx, rdx
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 30
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add edx, 77
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi + rcx]
cmovnle rsi, rsi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
test rcx, -2118888343
adc al, -58
test ebx, 1263899340
jmp .bb_0.1
.bb_0.1:
btc rsi, 140
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
