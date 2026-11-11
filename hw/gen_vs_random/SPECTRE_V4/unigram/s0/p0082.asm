.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle bx, si
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sub rbx, 59
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sub sil, dil
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
or rax, rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 12
test dl, al
add eax, -1796699558
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
inc edi
cmp al, 114
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
or si, 8
add eax, edi
movzx rax, di
btc ebx, 94
xor dl, dl
xor al, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
xor dl, dil
xor bl, sil
mul rbx
sbb ax, -26881
movsx rdi, dl
or bl, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add bl, -72
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add si, 4
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 44
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
not eax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
sub cl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
test di, 82
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
dec dx
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
