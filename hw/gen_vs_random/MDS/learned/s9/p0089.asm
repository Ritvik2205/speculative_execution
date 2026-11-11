.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 14
xor rbx, 89
test al, sil
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and sil, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 44
and al, 87
xor al, -26
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
btc edi, 230
xor rdi, -9
or dil, al
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
