.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
or eax, -612395655
and bl, -119
add al, dl
sbb sil, -11
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
add al, -127
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
add al, -99
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 93
movsx cx, dil
add cl, al
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
