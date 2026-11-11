.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and sil, bl
and bl, dil
test ax, 18697
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and al, dil
or bl, -52
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdi, 28
xor rbx, 89
jmp .bb_0.3
.bb_0.3:
test edi, -1252846009
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
