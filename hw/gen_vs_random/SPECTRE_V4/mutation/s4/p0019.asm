.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
sbb al, dl
adc di, -110
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
bts edx, edx
and dil, 96
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or ebx, ecx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
dec bl
xchg cx, ax
xor eax, 181978569
cmp ax, -906
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmp bl, bl
movzx rdx, ax
or si, 0b1000000000000000 # instrumentation
bsr di, si
movzx rsi, bx
add bl, bl
adc al, dl
neg cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
mul ax
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
test dx, si
add ax, -15653
movzx ax, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add dil, 16
and dl, al
test ax, cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
