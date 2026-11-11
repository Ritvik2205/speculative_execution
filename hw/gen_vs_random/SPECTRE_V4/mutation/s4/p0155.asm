.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
mul ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xor eax, 181978569
sbb al, dl
test bl, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
xchg cx, ax
add dil, 82
neg cx
movzx ax, dl
add bl, bl
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
cmp ax, 23131
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
cmp bl, bl
and dl, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
or si, 0b1000000000000000 # instrumentation
bsr di, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
adc esi, 90
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
add ax, -13169
test ax, cx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and dil, 96
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add ebx, 3
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
movzx rdx, ax
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
movzx rsi, bx
or ebx, ecx
adc al, dl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
adc di, -110
dec bl
bts edx, edx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
