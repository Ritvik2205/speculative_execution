.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor dil, -70
test ebx, -2015966884
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and dil, -62
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
or ax, 127
or al, -22
and cl, al
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
