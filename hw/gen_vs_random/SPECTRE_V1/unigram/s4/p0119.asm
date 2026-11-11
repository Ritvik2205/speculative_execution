.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setl dl
sbb bl, 79
lea ecx, qword ptr [rsi]
cmp sil, 25
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or rdx, 92
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add dl, -89 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 87
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
adc edi, 76
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
add bl, -95
lea eax, qword ptr [rcx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
