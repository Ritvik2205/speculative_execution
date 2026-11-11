.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and esi, 100
and sil, -56
or ax, 85
test al, 91
btr ax, cx
test al, 66
test dl, cl
xor ax, -1005
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor dl, al
or dl, cl
test rdi, 31
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
