.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and al, -103
xor al, -26
jmp .bb_0.1
.bb_0.1:
or eax, edi
or al, 25
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
test ecx, -1843375753
test al, bl
btr bx, di
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
