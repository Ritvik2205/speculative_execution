.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, ecx
add bl, -127 # instrumentation
movzx ebx, dil
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
lea rax, qword ptr [rdi + rax + 12]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
setnp cl
test dil, -107
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 83
adc dl, dl
xchg bl, cl
btr rcx, rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 62
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
cmovo ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
