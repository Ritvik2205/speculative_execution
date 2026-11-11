.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -84
cmovb rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
movzx ax, al
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
cmovnb bx, cx
sbb bx, 87
cmovbe cx, ax
add eax, edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 32
mov si, -8007
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
xor ax, cx
xor di, 58
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and cl, -128
cmovl ebx, eax
sub bl, sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
movsx dx, sil
xor sil, 60
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
cmovnz rcx, rax
cmovl si, ax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
add cl, -123 # instrumentation
sbb cl, 67
add bl, -49
cmp rax, 2096656187
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
add rdx, 8
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 68
add dl, bl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 81
sub dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
