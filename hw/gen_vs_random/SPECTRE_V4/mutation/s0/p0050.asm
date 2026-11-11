.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
adc esi, 90
or si, 0b1000000000000000 # instrumentation
bsr di, si
adc al, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
add ebx, 3
movzx ax, dl
and dil, 96
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and dl, al
test dx, si
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add dil, 16
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
adc di, -110
movzx rsi, bx
dec bl
mul ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
xchg cx, ax
or ebx, ecx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
test ax, cx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmp ax, -906
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add bl, bl
neg cx
add ax, -13169
xor eax, -164167056
cmp bl, bl
test bl, bl
movzx rdx, ax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
