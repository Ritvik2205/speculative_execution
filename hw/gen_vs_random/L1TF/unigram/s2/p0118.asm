.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, cl
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or si, 52
lea rdi, qword ptr [rdx + rcx + 87]
and cx, bx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 19
cmovl ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 88
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
setle bl
lea eax, qword ptr [rbx + rdi]
or sil, -44
lea edx, qword ptr [rdx + rsi + 66]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
