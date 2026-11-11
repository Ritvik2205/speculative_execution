.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or dl, -31
or dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test al, 66
or di, 100
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and sil, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test eax, -409834435
btc bx, 58
or rdi, -11
xor cl, 24
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
