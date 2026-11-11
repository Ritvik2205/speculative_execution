.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, di
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
cmovnz ebx, esi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rdx + 13440]
cmp rax, 108211639
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdx + rax + 29932]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
sbb rax, -1841833326
cmp bl, cl
xor dl, 9
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
