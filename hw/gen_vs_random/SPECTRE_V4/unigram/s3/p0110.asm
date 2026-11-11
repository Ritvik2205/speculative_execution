.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, cl
and al, -36
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 52
add dl, -99 # instrumentation
not ecx
test al, al
test dx, 83
sub rsi, 26
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and ebx, 33
cmovo esi, edx
neg cl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
add bl, -18 # instrumentation
mov rcx, rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or cl, 29
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
imul rdi
and dil, sil
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
add rsi, rcx
add bl, -109 # instrumentation
sbb edx, 57
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
bt esi, ecx
dec rax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmovnl rdx, rbx
add dl, 110 # instrumentation
movsx ax, dl
movzx rcx, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 32
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
adc cl, bl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
sub dl, 43
sub ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
