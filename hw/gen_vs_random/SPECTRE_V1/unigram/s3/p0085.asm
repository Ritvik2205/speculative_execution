.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
cmp dx, 17
adc cl, -19
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
sub dl, bl
btc edi, 3
bts dx, 26
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
