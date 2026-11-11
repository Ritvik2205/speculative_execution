.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ax, dil
adc ebx, 9
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
sub rdi, rdi
cmovs rdi, rax
imul rdi
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
setns dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
add al, 107 # instrumentation
lea esi, qword ptr [rdi + rax + 81]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
