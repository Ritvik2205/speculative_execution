.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
bt di, cx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor dil, -124
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and al, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
