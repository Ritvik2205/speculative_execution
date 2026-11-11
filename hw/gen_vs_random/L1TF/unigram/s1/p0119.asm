.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdi]
cmovb ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
setl dl
mov si, 20858
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
inc dx
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
cmovz edx, ecx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edx
lea esi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
