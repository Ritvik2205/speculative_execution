.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
test bl, 65
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test bl, 65
or sil, sil
test dil, -51
btc eax, 40
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
