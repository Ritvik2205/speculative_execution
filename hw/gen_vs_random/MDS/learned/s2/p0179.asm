.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
or al, 37
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test bl, cl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test rax, -359674714
xor dl, 40
xor ebx, 12
test al, dl
bt eax, 28
and dl, dl
and cl, -71
or al, -17
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
