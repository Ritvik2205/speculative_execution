.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
xor ecx, 35
adc dl, bl
test dl, -7
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
mov bl, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
neg edi
cmovno rdi, rax
cmovno rdx, rdx
or cl, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
mov dil, bl
xor dx, -128
bt rbx, 244
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
