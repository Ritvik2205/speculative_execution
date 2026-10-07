.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666 
lfence
mul ax 
lfence
test dx, si 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rcx], 98 
lfence
or si, 0b1000000000000000 # instrumentation
lfence
bsr di, si 
lfence
add cl, 119 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl rdx, qword ptr [r14 + rax] 
lfence
add dil, 16 
lfence
adc esi, 90 
lfence
movzx ax, dl 
lfence
xor eax, -164167056 
lfence
and dil, 96 
lfence
or dx, 1 # instrumentation
lfence
add cl, -75 # instrumentation
lfence
sbb bx, ax 
lfence
or rcx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rax, rcx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rdi], rbx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rbx], bl 
lfence
add bl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
bts qword ptr [r14 + rbx], rdx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rax], dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovo ax, word ptr [r14 + rcx] 
lfence
neg cx 
lfence
adc di, -110 
lfence
and dl, al 
lfence
xchg cx, ax 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rsi], 84 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovns rbx, qword ptr [r14 + rbx] 
lfence
add ebx, 3 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movzx rsi, word ptr [r14 + rdi] 
lfence
adc al, dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc rbx, qword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], -114 
lfence
or ebx, ecx 
lfence
test bl, bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx edx, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
bts dword ptr [r14 + rcx], 2 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], dl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rsi], ax 
lfence
sbb al, dl 
lfence
movzx rsi, bx 
lfence
cmp bl, bl 
lfence
cmp ax, 23131 
lfence
test ax, cx 
lfence
dec bl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rax], ax 
lfence
or bx, 1 # instrumentation
lfence
and dx, bx # instrumentation
lfence
shr dx, 1 # instrumentation
lfence
div bx 
lfence
movzx rdx, ax 
lfence
bts edx, edx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sub dl, byte ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
