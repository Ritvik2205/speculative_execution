.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
add cl, dil
dec al
and rdx, 88
movsx ecx, bl
imul rcx
xchg edi, ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
or eax, -401020526
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
bt si, ax
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
