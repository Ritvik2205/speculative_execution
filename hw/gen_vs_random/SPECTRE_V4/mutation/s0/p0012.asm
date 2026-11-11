.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test ax, cx
and dl, al
dec bl
bts edx, edx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
mul ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsr di, si
add bl, bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and dil, 96
or ebx, ecx
movzx ax, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
adc esi, 90
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
neg cx
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
add ax, -15653
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xchg cx, ax
add dil, 16
movzx rdx, ax
test bl, bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
cmp ax, -906
sbb al, dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
adc di, -110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test dx, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
xor eax, -164167056
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
movzx rsi, bx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
