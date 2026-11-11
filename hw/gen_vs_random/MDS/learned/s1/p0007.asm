.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, di
xor cl, 55
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test ebx, -961564216
btr bx, cx
and al, sil
not bl
test dil, -51
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
xor al, cl
test al, 22
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 78
jmp .bb_0.2
.bb_0.2:
or dl, sil
test dil, dl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
