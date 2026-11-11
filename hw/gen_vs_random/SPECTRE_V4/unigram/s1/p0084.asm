.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, sil
cmp dl, -82
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
cmp bl, sil
add cl, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
add bl, -101 # instrumentation
cmovz ebx, ebx
cmovnp esi, edx
bt ebx, edx
cmovz ax, di
cmovnz rax, rdi
mov rdx, -3284511739993892328
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor dl, -66
cmovp rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
bt edx, esi
adc rdi, rsi
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
add dl, -8
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
cmp al, 115
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
mov dl, 81
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
xor di, 91
btc di, ax
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
add cl, cl
and al, 59
btc rdx, rax
adc dl, 23
bts dx, 26
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
neg rdi
sub edi, 39
cmp bl, -79
sbb dx, 2
test di, -19523
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
bt rcx, 189
sbb esi, 89
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
xor rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
