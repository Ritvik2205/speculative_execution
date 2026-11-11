.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, 17
bts ecx, edx
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 58
lea rsi, qword ptr [rax + rbx + 92]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 95
sub rdx, 89
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
cmovbe edi, ebx
inc dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
