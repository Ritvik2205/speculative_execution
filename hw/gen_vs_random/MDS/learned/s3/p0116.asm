.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
or dl, bl
jmp .bb_0.1
.bb_0.1:
bts rsi, 205
test eax, -409834435
and dil, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or rax, 1020005579
bt ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and edi, 23
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
