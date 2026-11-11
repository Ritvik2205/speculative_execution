.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
xor dl, 9
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add dl, sil
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], si
cmp edi, 71
add sil, 6 # instrumentation
cmovl edi, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 92
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 74
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
