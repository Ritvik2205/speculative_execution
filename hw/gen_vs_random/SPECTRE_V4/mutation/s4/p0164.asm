.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
neg cx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
adc esi, 90
xor eax, -164167056
adc di, -110
cmp bl, bl
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
movzx rdx, ax
test bl, bl
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
adc al, dl
sbb al, dl
test ax, cx
cmp ax, -15031
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
dec bl
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
mul ax
add dil, 82
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and dil, 96
movzx ax, dl
or ebx, ecx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
test dx, si
movzx rsi, bx
and dl, al
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
