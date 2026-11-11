.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
btr ax, di
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and bl, al
or bl, dil
test al, -81
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
or sil, dl
test si, 63
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
test sil, al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor dl, 8
or cl, 119
test rbx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
