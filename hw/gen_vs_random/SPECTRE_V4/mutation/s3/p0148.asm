.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsr di, si
test ax, cx
add dil, 16
or ebx, ecx
adc al, dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
add bl, bl
movzx rdx, ax
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmp ax, -15409
and dl, al
neg cx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
xchg cx, ax
and dil, 96
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
movzx rsi, bx
adc esi, 90
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
dec bl
movzx ax, dl
test bl, bl
xor eax, -164167056
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc di, -110
bts edx, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
mul ax
sbb al, dl
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
cmp bl, bl
add ax, -15653
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
