.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
add bx, bx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc rax, 1682231791
imul dx, dx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
mov bl, al
btr esi, esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovb cx, dx
bts rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test rdx, rcx
mul dil
neg rcx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
not di
and al, 100
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
btr bx, cx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
bswap ebx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
sub cl, -51
cmovs edx, eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and dl, -104
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
add dl, 29 # instrumentation
cmovnl rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
