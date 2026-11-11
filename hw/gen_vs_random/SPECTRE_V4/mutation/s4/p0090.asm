.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsr di, si
movzx ax, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
test bl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
adc di, -110
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
movzx rsi, bx
test dx, si
or ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
bts edx, edx
test ax, cx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
add ebx, 3
xor eax, 181978569
mul ax
and dil, 96
adc al, dl
cmp bl, bl
movzx rdx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
dec bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
cmp ax, 23131
add bl, bl
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add dil, 16
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
adc esi, 90
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add ax, 28666
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
