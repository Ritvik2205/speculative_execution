.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
add bl, 78 # instrumentation
adc cx, 55
xor dl, 71
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
sub al, -66
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, al
sub si, 32
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
lea si, qword ptr [rax + rbx + 55]
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 42
add cl, -84 # instrumentation
lea ecx, qword ptr [rax + rax + 91]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
