.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and dil, 96
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
test ax, cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test dx, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
adc esi, 90
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
sbb al, dl
cmp bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
test bl, bl
neg cx
add bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add dil, 82
bts edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
adc di, -110
adc al, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or ebx, ecx
and dl, al
cmp ax, -15031
mul ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
add ax, -15653
movzx rdx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or si, 0b1000000000000000 # instrumentation
bsr di, si
xor eax, -164167056
movzx rsi, bx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
dec bl
movzx ax, dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
