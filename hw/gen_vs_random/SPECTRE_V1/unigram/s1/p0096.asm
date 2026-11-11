.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle si, si
add al, -84 # instrumentation
lea eax, qword ptr [rbx + rbx + 39392]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
bt esi, edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
lea rcx, qword ptr [rbx + rdx + 52]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 52
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 85
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
imul edi, edi, 41
add dl, -89 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 46
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
sub rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
