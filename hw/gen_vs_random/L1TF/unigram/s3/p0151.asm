.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 95
lea edi, qword ptr [rdi + rdx + 12]
lea rdx, qword ptr [rcx + rbx]
mov sil, dil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
