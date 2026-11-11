.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 92
and si, 49
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 47
xor cl, bl
cmp bl, sil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
xor dl, al
bts ecx, 164
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
