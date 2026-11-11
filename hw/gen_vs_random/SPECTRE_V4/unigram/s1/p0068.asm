.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
sbb eax, -984782068
sub ebx, 87
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
add ax, -15653
inc ebx
mov rbx, 9101099553822202722
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add sil, dil
or ecx, 65
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 25
and sil, al
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sub al, 119
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], bx
add dil, 82
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
add eax, ecx
or ecx, 43
bt edx, 72
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
cmovnbe dx, cx
cmovnbe rax, rdi
cmp si, 13
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
add edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 74
imul sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
cmovs rax, rsi
xor ax, di
test eax, -544019457
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 6
sub sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
