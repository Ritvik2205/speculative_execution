.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rbx
and bl, dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
neg rdx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -7
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
add bx, -65
sub dx, -23
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
