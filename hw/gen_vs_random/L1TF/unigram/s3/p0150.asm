.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
cmp ax, 24210
bts bx, 223
add dl, -7 # instrumentation
cwd
bt rdx, rdx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
cmp al, dl
adc edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
jmp .bb_0.1
.bb_0.1:
not bl
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
add sil, -61
xor cl, sil
neg dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
add dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
