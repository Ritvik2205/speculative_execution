.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
sub al, cl
cmp al, dl
imul si, si
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and cl, 86
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
adc bl, al
cdq
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
