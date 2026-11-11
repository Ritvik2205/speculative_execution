.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and dl, al
or si, 0b1000000000000000 # instrumentation
bsr di, si
test ax, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmp bl, bl
add dil, 82
test dx, si
add bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
test bl, bl
movzx rsi, bx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
adc di, -110
movzx ax, dl
mul ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
adc esi, 90
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bts edx, edx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
dec bl
add ebx, 3
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or ebx, ecx
adc al, dl
add ax, -15653
neg cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and dil, 96
movzx rdx, ax
sbb al, dl
xchg cx, ax
cmp ax, -15031
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
xor eax, -437098167
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
