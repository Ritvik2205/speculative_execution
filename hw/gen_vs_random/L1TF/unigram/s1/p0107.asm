.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 100
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
or dil, dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
movzx eax, di
bt ecx, ebx
jmp .bb_0.1
.bb_0.1:
imul dl
and ax, cx
test bl, 45
lea rdx, qword ptr [rsi + rsi]
lea ebx, qword ptr [rax]
cmovbe edi, eax
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
