.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and cx, -2
test bl, dl
and dil, -62
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
or ebx, esi
and dx, 3
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or dl, al
and cl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
