.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, bl
and dl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
cmp ax, -906
movzx rdx, ax
xor eax, -164167056
test dx, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and dil, 96
test ax, cx
add dil, 82
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
sbb al, dl
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
mul ax
bts edx, edx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add ebx, 3
movzx rsi, bx
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
neg cx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
test bl, bl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
add bl, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc esi, 90
dec bl
or ebx, ecx
xchg cx, ax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or si, 0b1000000000000000 # instrumentation
bsr di, si
adc al, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx ax, dl
adc di, -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
