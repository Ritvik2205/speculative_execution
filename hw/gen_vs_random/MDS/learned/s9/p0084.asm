.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
test al, cl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or al, sil
jmp .bb_0.2
.bb_0.2:
or al, sil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test dil, 46
and cx, -2
test cl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or rax, -689609688
lea rdi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
