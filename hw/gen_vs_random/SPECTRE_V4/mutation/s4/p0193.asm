.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
dec bl
sbb al, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
adc esi, 90
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
movzx rsi, bx
cmp bl, bl
movzx ax, dl
adc al, dl
xchg cx, ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and dil, 96
test bl, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
mul ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add ebx, 3
add ax, 28666
xor eax, -437098167
movzx rdx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
adc di, -110
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
test ax, cx
and dl, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
add dil, 16
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
test dx, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add bl, bl
neg cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmp ax, -15031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
