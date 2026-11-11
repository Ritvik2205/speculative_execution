.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add dil, 16
dec bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
neg cx
cmp bl, bl
xor eax, -164167056
adc esi, 90
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
adc di, -110
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or ebx, ecx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
test bl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
add bl, bl
movzx rsi, bx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add ax, -13169
test ax, cx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
cmp ax, -15031
movzx ax, dl
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb al, dl
and dil, 96
adc al, dl
test dx, si
and dl, al
xchg cx, ax
movzx rdx, ax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
mul ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
add ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
