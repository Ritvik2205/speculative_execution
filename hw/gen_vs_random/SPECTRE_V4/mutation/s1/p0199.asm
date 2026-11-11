.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
add dil, 82
and dil, 96
adc esi, 90
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
cmp ax, -15031
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
adc di, -110
mul ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add ebx, 3
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
movzx rdx, ax
cmp bl, bl
test ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
bts edx, edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
movzx ax, dl
xchg cx, ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and dl, al
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
xor eax, 181978569
sbb al, dl
add ax, -13169
dec bl
test bl, bl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
or ebx, ecx
adc al, dl
test dx, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
movzx rsi, bx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
neg cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
