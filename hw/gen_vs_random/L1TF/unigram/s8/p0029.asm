.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
inc bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
not rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 25
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 67
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
bts eax, edx
bts cx, 176
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
