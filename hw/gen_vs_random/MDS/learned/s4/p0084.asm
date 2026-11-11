.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and sil, sil
jmp .bb_0.2
.bb_0.2:
test di, cx
or cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
or rax, -689609688
btc di, 164
xor rax, -91
jmp .bb_0.3
.bb_0.3:
test bl, -14
and bl, 68
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
