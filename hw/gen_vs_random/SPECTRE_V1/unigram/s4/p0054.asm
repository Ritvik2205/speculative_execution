.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -15315
and dl, -92
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and al, cl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edi
add dl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -58
adc sil, -77
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
mul sil
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovle ebx, ecx
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
