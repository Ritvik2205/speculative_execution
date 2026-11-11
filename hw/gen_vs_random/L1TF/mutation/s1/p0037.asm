.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rdi + 51091]
cmp al, al
sub dl, cl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
lea rbx, qword ptr [rdi]
or bl, 61
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
cmovle cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
adc al, -90
add dl, -121 # instrumentation
cmovnp eax, esi
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
test rax, -991273825
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
imul rdi, rcx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
