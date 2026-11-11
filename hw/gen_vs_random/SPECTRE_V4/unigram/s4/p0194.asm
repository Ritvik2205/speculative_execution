.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, al
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
or di, 2
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
xchg rdx, rdx
sub rdx, 5
add sil, dl
and edx, edx
movzx rbx, bl
adc al, al
sub al, 29
add ebx, -57
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or cl, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
dec dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
mul eax
bswap edi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
cmovnbe edi, esi
cmovbe cx, ax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
cmovnbe rax, rdi
sbb cl, 12
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 60
xor sil, al
neg rcx
sub rax, -1680844889
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
test al, -24
cmovnp cx, dx
add cl, -33 # instrumentation
not dil
and al, bl
test edi, edx
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
cmovbe si, di
sub al, 26
xor dl, -123
xor dil, sil
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
cmovl dx, si
add dl, 122 # instrumentation
cmovz dx, bx
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
