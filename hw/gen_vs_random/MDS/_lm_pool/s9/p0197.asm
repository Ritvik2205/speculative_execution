.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
or ecx, ebx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and cl, dil
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and al, 14
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor al, -19
test eax, -409834435
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
