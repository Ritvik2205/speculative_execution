.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
xor sil, sil
or ax, -114
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
sub dil, bl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -108 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
cmovnle rsi, rbx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 59
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
