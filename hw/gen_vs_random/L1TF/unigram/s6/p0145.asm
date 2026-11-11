.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -5
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
or dl, dl
imul dx, si
cmovb bx, cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdi + rdi + 68]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
sub sil, -99
adc cl, -34
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
xor rdx, rax
adc dil, 120
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
