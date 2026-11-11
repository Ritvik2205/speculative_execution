.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add bl, -72
bt eax, ebx
xor dl, dil
and rdi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdi]
xor sil, 56
mul rbx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 67
add dl, 72 # instrumentation
cmovle dx, si
adc bx, -89
test cl, bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
mul ax
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmp al, al
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
test sil, sil
or ecx, edx
test rcx, -2118888343
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
imul dl
sub edx, eax
cmovnl rdx, rdx
xor sil, 56
or sil, sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
not ax
and edx, 24
sub dil, dil
cmovp rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
or ax, -15282
or dl, bl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb cx, 89
add bl, -72
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
cmovnl rax, rax
add sil, 26
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
movzx bx, bl
add sil, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 43
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
