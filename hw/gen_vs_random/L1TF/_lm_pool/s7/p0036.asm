.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
test al, -104
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor esi, 40
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
