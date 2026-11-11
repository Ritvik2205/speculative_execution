.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
cmp ax, -15409
xor eax, 181978569
xchg cx, ax
movzx ax, dl
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
sbb al, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
add ebx, 3
test bl, bl
cmp bl, bl
and dl, al
adc al, dl
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test ax, cx
and dil, 96
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
neg cx
dec bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc di, -110
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
mul ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
add bl, bl
or ebx, ecx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test dx, si
movzx rsi, bx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 16
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add ax, 28666
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
movzx rdx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
