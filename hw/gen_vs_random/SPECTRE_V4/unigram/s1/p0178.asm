.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, si
dec rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub rcx, 126
or di, 122
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
movzx rax, cx
inc sil
and al, 92
or dl, al
mul dl
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
adc rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
sub al, 0
and sil, sil
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
bt ax, cx
adc sil, cl
or cl, 66
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
sub di, 9
xor rcx, 112
adc sil, -112
sbb sil, -124
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
cmovs rdx, rcx
or rdx, 1
movzx edi, si
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovb ax, si
xor sil, 59
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
xor dl, -123
btc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovnz rbx, rbx
sbb rdi, 13
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
