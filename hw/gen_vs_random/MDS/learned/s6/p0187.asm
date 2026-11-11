.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
or rax, -141551502
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test al, bl
xor dl, al
btr bx, si
or cl, -77
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and al, 75
or edx, -1
and sil, bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
