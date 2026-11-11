.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, di
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and al, dil
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test bl, -92
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and cl, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
