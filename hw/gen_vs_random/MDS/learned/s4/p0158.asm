.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test cl, dl
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
test al, 66
btc bx, 104
not dl
and al, 84
test ax, 6779
xor dl, al
test cl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
xor dl, dil
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
