.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
test di, 16
cmovnle edx, eax
btc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 57
cmovnz bx, cx
or sil, -8
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and cl, -63
or cl, sil
btc bx, 179
or al, dl
and sil, 65
or eax, -1642752131
cmovs esi, edi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
cmovl rdx, rcx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
cmovo rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
