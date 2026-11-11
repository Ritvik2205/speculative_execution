.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 76
movzx rdi, al
or rbx, rax
and edx, edx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
add rsi, -100
add dl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 72
or cl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
sub di, di
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 49
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul cx
add ecx, 99
btr bx, 42
sub ax, -13057
add rsi, -100
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 58
bts rdx, rax
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
cmovo ecx, edx
mov rsi, 4368505613814921305
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
add dil, sil
btc ebx, ecx
inc dl
cmovp rax, rdx
add sil, dil
adc eax, 1019803307
movzx eax, di
test di, si
sub bl, 66
movsx edx, cl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and sil, -84
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 34
movzx dx, dl
and dil, bl
cmp dx, 58
bts ax, dx
adc bl, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
