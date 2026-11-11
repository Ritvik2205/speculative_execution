.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or al, sil
not cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and dl, dil
and cl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, 24
or cl, dl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and sil, -56
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and ax, -10351
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
