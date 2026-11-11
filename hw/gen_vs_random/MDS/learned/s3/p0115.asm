.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
or sil, -78
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and ax, 339
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
btr edi, ebx
xor cl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test dil, sil
jmp .bb_0.1
.bb_0.1:
test al, dil
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
