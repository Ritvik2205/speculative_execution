.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
add bl, -92 # instrumentation
setnz sil
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
neg al
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add dl, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and sil, sil
add bl, 117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
lea rbx, qword ptr [rax + rbx + 86]
mul rdi
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
test cx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
