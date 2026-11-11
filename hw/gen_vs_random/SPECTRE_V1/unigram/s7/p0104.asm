.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, 68
and rcx, -29
sub dil, dil
movsx rdi, dx
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and ebx, 6
imul edx, edx, 97
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and sil, sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
imul edx, edx, 74
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
add cl, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
