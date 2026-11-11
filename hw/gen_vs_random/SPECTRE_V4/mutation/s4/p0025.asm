.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
movzx rdx, ax
dec bl
cmp ax, 23131
and dl, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc di, -110
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
test dx, si
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
or si, 0b1000000000000000 # instrumentation
bsr di, si
bts edx, edx
or ebx, ecx
movzx rsi, bx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and dil, 96
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
xchg cx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test ax, cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
mul ax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
movzx ax, dl
adc esi, 90
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
xor eax, -437098167
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
test bl, bl
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
neg cx
add bl, bl
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
add ebx, 3
adc al, dl
cmp bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add dil, 16
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
