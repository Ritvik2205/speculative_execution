.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sub sil, -50
test bx, -1599
bt ebx, 228
mov rbx, 9101099553822202722
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
or rax, rdi
inc rdi
sub edx, 26
add edx, 47
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 84
test bx, -1599
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
test dil, dl
bts cx, 19
add bl, 65 # instrumentation
cmovnp si, bx
inc eax
add bl, 65 # instrumentation
cmovnp bx, dx
movzx rax, si
or edx, -127
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
imul cl
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 45
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 41
sbb cl, -104
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
neg dil
neg bl
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
test di, si
sub cl, -74
cmovns ecx, esi
adc eax, -79
sbb al, -101
inc bx
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
xor dl, 60
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 10
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor eax, 181978569
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
