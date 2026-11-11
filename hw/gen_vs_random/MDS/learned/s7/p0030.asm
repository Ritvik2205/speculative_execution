.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or rax, -1561934807
xor dil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
test rsi, 77
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test al, 66
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test cl, cl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
