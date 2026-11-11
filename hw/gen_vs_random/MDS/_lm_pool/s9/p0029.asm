.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and al, 87
test al, -7
or sil, -78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test al, 127
and al, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
xor ax, -5889
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
xor ecx, 8
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
