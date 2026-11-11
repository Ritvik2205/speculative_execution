.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
or al, sil
and ax, 13090
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor sil, bl
and dil, -62
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
test bl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or ax, 30524
xor rax, -270810088
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
