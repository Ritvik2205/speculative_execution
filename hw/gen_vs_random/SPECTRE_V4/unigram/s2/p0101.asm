.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1070057082
sub rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
add dil, -35 # instrumentation
mov bl, dil
xor dx, ax
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
cmovl edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
cmp ebx, -19
cmp dl, 95
bt rbx, 65
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
adc ax, -10650
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], edx
mov bl, bl
cmp dl, 83
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
xor sil, 50
or sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
cmovnbe rax, rsi
dec al
add bl, -49
or dl, 71
bt rax, rdx
test cx, 19367
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
sbb sil, -124
add cl, -58 # instrumentation
cmovnz ebx, ecx
add al, 89 # instrumentation
cmovnle bx, si
sbb ax, 18812
xor al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
sbb dl, -71
and dl, al
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
imul ecx, ebx, 15
cmp ax, -18179
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
