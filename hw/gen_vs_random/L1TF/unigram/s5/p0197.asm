.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
lea rcx, qword ptr [rdi + rax]
or cl, 105
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
cmovnbe esi, edi
cmovno rax, rcx
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
lea rcx, qword ptr [rax + rax]
jmp .bb_0.1
.bb_0.1:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
dec ax
lea eax, qword ptr [rdx + rbx + 25]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
