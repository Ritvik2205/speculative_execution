.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 91
or al, -58
xor rax, -404206377
bts rcx, rsi
or rax, 302048971
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
xor dl, -43
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xor dil, cl
test ebx, -961564216
and cl, al
and bx, 37
and sil, -9
xor dil, -70
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and cl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
