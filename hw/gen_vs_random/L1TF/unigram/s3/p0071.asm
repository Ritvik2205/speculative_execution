.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rax
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 16
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmp cl, 57
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
mov bl, bl
cdq
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
lea edi, qword ptr [rdi + rax + 95]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 99
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
add sil, 82 # instrumentation
adc sil, al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
cmovno si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
