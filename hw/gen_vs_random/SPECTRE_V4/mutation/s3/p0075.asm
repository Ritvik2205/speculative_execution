.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 96
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or ebx, ecx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
adc di, -110
cmp bl, bl
dec bl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
or si, 0b1000000000000000 # instrumentation
bsr di, si
adc al, dl
add dil, 82
test dx, si
neg cx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
add bl, bl
test bl, bl
xchg cx, ax
adc esi, 90
xor eax, -437098167
movzx rdx, ax
and dl, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
movzx ax, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
mul ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
cmp ax, -15031
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
movzx rsi, bx
bts edx, edx
test ax, cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add ebx, 3
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
