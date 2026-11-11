.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rbx, 65
and ebx, 21
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and al, bl
or dl, al
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor ax, -6793
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or cl, 6
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
