.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 181978569
movzx rsi, bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
dec bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
mul ax
test bl, bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
add dil, 16
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
cmp ax, 23131
test dx, si
add bl, bl
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add ax, 28666
bts edx, edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
test ax, cx
adc al, dl
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
xchg cx, ax
and dl, al
movzx ax, dl
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
add ebx, 3
adc esi, 90
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or ebx, ecx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
adc di, -110
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
neg cx
cmp bl, bl
and dil, 96
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
movzx rdx, ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
