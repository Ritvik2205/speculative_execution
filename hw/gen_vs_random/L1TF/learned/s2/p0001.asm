.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
lea cx, qword ptr [rcx + rdi + 51091]
or bl, 61
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 52
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
setnz dil
adc al, -90
test rax, -991273825
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
