.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 16
adc esi, 90
movzx ax, dl
xor eax, -164167056
and dil, 96
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
neg cx
adc di, -110
and dl, al
xchg cx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
adc al, dl
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
or ebx, ecx
test bl, bl
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
add bl, cl
adc bl, sil
cmovs di, di
sub rdx, 22
btc dx, 16
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
