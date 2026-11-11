.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test bl, -14
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test eax, -1634766116
or al, cl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or al, sil
xor di, -83
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
