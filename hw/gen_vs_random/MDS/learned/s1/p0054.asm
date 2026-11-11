.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
or bl, 100
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
bt bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
test ecx, -1843375753
or ax, 85
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
