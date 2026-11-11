.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
test dil, bl
lea dx, qword ptr [rdx + rax]
lea di, qword ptr [rdi]
adc dil, 73
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
add esi, 14
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
lea di, qword ptr [rcx + rax + 31]
add bl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
add dl, -127 # instrumentation
setp dl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
