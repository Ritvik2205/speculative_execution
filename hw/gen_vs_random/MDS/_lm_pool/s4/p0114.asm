.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
bts rax, rdx
and dl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
or sil, -78
and bl, cl
and cl, sil
test ecx, -1843375753
and sil, al
test eax, -409834435
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
or al, 74
xor dil, 124
or dl, -31
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
