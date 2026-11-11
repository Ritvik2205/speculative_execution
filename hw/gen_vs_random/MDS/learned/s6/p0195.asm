.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
btr edx, esi
or bl, bl
btr eax, ecx
and al, -54
test bl, al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test dl, -95
xor ax, -6793
jmp .bb_0.1
.bb_0.1:
or sil, -49
and bl, dl
and bl, dl
jmp .bb_0.2
.bb_0.2:
test dil, sil
xor sil, bl
xor cl, 83
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
