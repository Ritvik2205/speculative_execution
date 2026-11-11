.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1495028166
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
xor dl, dil
and edi, 90
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb dil, 2
lea rdx, qword ptr [rax + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
sbb rcx, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
