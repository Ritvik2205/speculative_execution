.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
jmp .bb_0.1
.bb_0.1:
and sil, sil
and cx, -2
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
jmp .bb_0.2
.bb_0.2:
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
bt dx, cx
xor bl, al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
