.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor dl, 34
and ax, 29207
bt dx, bx
or al, sil
and bl, cl
or bl, dl
xor dx, 59
test ax, 6779
not cl
and ax, 13090
and al, dl
and di, 99
xor dl, al
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
