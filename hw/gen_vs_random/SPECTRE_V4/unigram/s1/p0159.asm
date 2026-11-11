.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rax, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
sub rax, -701741274
bts edx, edi
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
mul dl
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
xor cl, -85
test edx, 573099753
sub dl, dl
cmovnle eax, ecx
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
add al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 20
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
neg eax
mov rsi, rbx
test ax, 23760
neg dl
bts edx, 37
sbb dl, dl
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add edx, 43
test dx, 70
or al, al
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 62
add bl, bl
inc dil
add bl, bl
cmovnbe rcx, rdi
imul ecx, eax, 91
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
cmovnb ebx, edx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovnbe rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
