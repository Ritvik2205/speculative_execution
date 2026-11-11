.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -437098167
add bl, bl
and dl, al
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
test dx, si
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
neg cx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
test bl, bl
or ebx, ecx
adc di, -110
and dil, 96
cmp ax, -15409
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
sbb al, dl
mul ax
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
test ax, cx
cmp bl, bl
adc esi, 90
movzx rsi, bx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add dil, 16
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
adc al, dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx ax, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add ebx, 3
dec bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
bts edx, edx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
movzx rdx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
