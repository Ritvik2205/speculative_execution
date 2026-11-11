.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor sil, 94
and eax, -85386306
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor al, -4
test eax, -571234566
or dil, 16
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or al, dil
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
cmovnbe rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
