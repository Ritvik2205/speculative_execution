.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
movzx rsi, bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
add dil, 82
or ebx, ecx
bts edx, edx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
add ax, -13169
cmp bl, bl
and dil, 96
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
sbb al, dl
adc al, dl
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
dec bl
movzx rdx, ax
test bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or si, 0b1000000000000000 # instrumentation
bsr di, si
cmp ax, -906
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
mul ax
adc di, -110
add bl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
neg cx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
adc esi, 90
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add ebx, 3
test dx, si
movzx ax, dl
and dl, al
test ax, cx
xchg cx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
xor eax, 181978569
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
