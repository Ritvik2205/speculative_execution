.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle edx, edi
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and al, -68
jmp .bb_0.1
.bb_0.1:
inc eax
and bl, dl
test bl, 45
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
add sil, al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
xchg edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
