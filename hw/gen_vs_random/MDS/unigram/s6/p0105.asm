.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
test cl, 54
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
cmovle rbx, rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
bt edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
btr si, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 82
xor rbx, 89
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor dl, 8
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
