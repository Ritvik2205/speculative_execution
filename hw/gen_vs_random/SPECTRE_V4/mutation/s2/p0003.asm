.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, 3
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
movzx ax, dl
cmp ax, 23131
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
add dil, 82
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and dil, 96
or ebx, ecx
add ax, -13169
xchg cx, ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
sbb al, dl
adc di, -110
test bl, bl
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and dl, al
mul ax
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
adc al, dl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add bl, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rsi, bx
movzx rdx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
neg cx
test ax, cx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
bts edx, edx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
dec bl
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
test dx, si
xor eax, -164167056
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
