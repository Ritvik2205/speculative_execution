.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 77 # instrumentation
sbb ebx, -34
add eax, -1
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
imul al
sbb edx, 23
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
cmovo di, bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, -88
sub bl, -96
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
add eax, 109
and rdx, 88
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
cmp bl, cl
lea edx, qword ptr [rdx + rax + 29932]
adc dl, bl
xor dl, 64
sbb rax, 803312930
add dil, 88
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
