.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, dl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
or ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add dil, 16
neg cx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ax, 28666
movzx rdx, ax
cmp ax, -15409
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
xchg cx, ax
add ebx, 3
and dil, 96
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
adc di, -110
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
test ax, cx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
mul ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
or si, 0b1000000000000000 # instrumentation
bsr di, si
test bl, bl
cmp bl, bl
bts edx, edx
xor eax, -164167056
sbb al, dl
adc al, dl
test dx, si
and dl, al
dec bl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx rsi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
