.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
movzx rsi, bx
cmp ax, -15409
test dx, si
xchg cx, ax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
movzx ax, dl
movzx rdx, ax
mul ax
add dil, 16
xor eax, 181978569
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb al, dl
bts edx, edx
add bl, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and dil, 96
test bl, bl
neg cx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
adc al, dl
and dl, al
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
dec bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
or ebx, ecx
adc di, -110
or si, 0b1000000000000000 # instrumentation
bsr di, si
test ax, cx
adc esi, 90
cmp bl, bl
add ax, -15653
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
