.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 34
test al, dl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or dl, 85
and dl, cl
or bl, dl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor cl, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and al, sil
test eax, -1634766116
xor bl, cl
and rdi, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
