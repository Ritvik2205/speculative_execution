.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
imul ebx, edx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
movsx rdi, di
add bl, -12 # instrumentation
lea rbx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
bts rbx, 64
and rcx, -29
add edi, -91
imul edi
add dl, -127 # instrumentation
setp sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
