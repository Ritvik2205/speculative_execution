.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rbx, rdi
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
add cl, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 86
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
adc dil, 41
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
setnz cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
add cl, 56 # instrumentation
cmovns edi, ecx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
