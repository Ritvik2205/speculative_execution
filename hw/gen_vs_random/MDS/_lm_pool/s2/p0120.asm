.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and bl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor al, bl
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
test al, bl
xor di, -83
jmp .bb_0.1
.bb_0.1:
or dil, dl
and sil, cl
and sil, dil
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
