.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and edi, 23
btr cx, di
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
or al, dl
and al, bl
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor cl, sil
xor sil, dl
and rsi, 18
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
