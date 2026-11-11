.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
not dil
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
xor edi, 47
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
cmovno eax, ebx
or dil, dl
jmp .bb_0.1
.bb_0.1:
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
test sil, sil
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
test eax, ebx
test bl, -9
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
xor edi, eax
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
