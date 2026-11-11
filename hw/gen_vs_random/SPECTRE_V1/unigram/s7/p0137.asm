.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
or dl, 41
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
add al, 120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
adc eax, 34
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdi]
bts rcx, 6
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
add bl, -64 # instrumentation
cmovnle edx, ebx
add al, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
adc sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
