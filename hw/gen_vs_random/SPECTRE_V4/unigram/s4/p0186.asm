.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdi, rbx
and bl, -60
adc dx, 28
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
adc dl, 64
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
dec al
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 100
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
add bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and cl, dil
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
test rsi, 76
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
imul rdx, rsi, 68
cmovz rax, rsi
and dil, al
cmovb bx, si
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
sbb esi, 73
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
sbb rbx, 20
or dl, dl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
or dl, 71
add eax, 953442933
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
mov dil, 35
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
sbb ebx, edi
adc ebx, 51
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
