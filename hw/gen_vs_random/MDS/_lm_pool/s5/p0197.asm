.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
not dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test esi, 425331143
cmovbe ecx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
btr si, di
or cl, al
test bl, -114
xor dl, -43
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
