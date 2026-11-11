.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, edx
mov rbx, 9101099553822202722
sbb esi, 17
and sil, -49
sub esi, 82
test bx, dx
add dl, 41
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
test dil, al
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
xor si, bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
adc al, -58
sbb cl, al
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 91
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
or cx, di
cmp al, 70
adc rbx, rax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
neg al
cmp esi, 14
mul cl
bt ecx, edx
add dil, dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
movzx bx, dil
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movsx rbx, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
