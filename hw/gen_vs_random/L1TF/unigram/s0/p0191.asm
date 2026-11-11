.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, dil
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
setnp bl
and cl, dl
imul eax, eax, 96
and rdx, 88
sub rdi, 77
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and esi, 3
adc cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
