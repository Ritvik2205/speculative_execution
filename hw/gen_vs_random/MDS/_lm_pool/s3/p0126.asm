.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test rax, -2052112368
jmp .bb_0.1
.bb_0.1:
and sil, -9
bts rax, rbx
test dl, -95
test al, 127
xor ax, -6793
bt di, 52
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and al, -54
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
