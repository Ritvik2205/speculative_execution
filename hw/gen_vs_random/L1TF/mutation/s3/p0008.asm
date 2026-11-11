.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
lea rbx, qword ptr [rdi]
or bl, 61
lea cx, qword ptr [rcx + rdi + 51091]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
cmovle cx, cx
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
sub dl, cl
cmp al, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
adc al, 36
imul rdi, rcx
add dl, -121 # instrumentation
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
test rax, 1469613902
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
