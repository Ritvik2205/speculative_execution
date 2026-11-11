.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and dx, 60
or rdi, 21
btr ebx, edx
and al, 87
or cx, 49
test al, -7
xor dl, dil
and bl, 68
test dil, -80
or al, bl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
