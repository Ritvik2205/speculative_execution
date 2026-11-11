.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor sil, -14
and cl, cl
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdx
xor dil, bl
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
