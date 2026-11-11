.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
add al, -62 # instrumentation
setnb dl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
setp dl
or sil, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, al
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
bt rbx, rbx
add cl, -47 # instrumentation
setbe cl
or rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
xor al, -42
adc dl, 107
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
