.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ecx, edi
sub cl, sil
test al, 40
mov dl, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add cx, -103
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor rbx, 50
add cl, -93 # instrumentation
not rdi
add al, 36 # instrumentation
cmovnp rdx, rcx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
sbb eax, 1830317432
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
