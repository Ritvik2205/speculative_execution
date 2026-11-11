.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and bl, sil
setl sil
add cl, 88
add dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
movzx rax, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
sub dl, -49
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
