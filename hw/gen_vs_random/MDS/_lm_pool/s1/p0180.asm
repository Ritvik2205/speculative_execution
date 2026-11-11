.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmovns bx, dx
test ax, 6779
and cl, cl
and dl, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or cl, cl
bt eax, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
test dl, -85
xor sil, -126
xor sil, -14
test al, dil
and bl, 68
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
