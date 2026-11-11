.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
bt rcx, rbx
xor cl, al
mov al, al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and al, -118
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mul rdi
test rcx, rdi
adc sil, 111
movsx ebx, bl
and rax, 1072797615
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and ax, -16777
and dl, -11
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
imul dx, cx
and dl, dl
neg ax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and edi, edi
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
movzx ecx, si
inc eax
mov al, al
xor bl, 27
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, -118
sub eax, -529389957
adc cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or dil, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
