.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and al, -55
and al, bl
xor dl, -19
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and ax, 29207
xor sil, 110
btc ax, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
test bl, -14
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
xor rdi, -9
xor dl, 8
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
