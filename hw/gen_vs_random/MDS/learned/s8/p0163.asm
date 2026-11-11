.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
test al, -7
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor rcx, 71
or rcx, -17
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or bl, bl
and al, 49
or bl, 127
xor al, bl
test ecx, -1843375753
and sil, 74
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
