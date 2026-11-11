.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
mul ax
sbb al, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
test bl, bl
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
movzx rsi, bx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmp ax, -15031
adc al, dl
test ax, cx
bts edx, edx
dec bl
add dil, 16
test dx, si
movzx ax, dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
add ax, -15653
add ebx, 3
add bl, bl
movzx rdx, ax
and dil, 96
and dl, al
xor eax, -437098167
neg cx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
or ebx, ecx
adc di, -110
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
adc esi, 90
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
xchg cx, ax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmp bl, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
