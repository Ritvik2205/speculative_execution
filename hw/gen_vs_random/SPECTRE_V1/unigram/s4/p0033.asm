.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 198
add dl, 90 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
setno sil
lea eax, qword ptr [rdi + rdx + 22]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
imul bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 30
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
sub rax, -679751639
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
neg rcx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
inc cx
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
