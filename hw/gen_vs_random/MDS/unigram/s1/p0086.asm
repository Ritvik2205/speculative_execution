.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and bx, -21
or eax, edi
or cx, 10
bts ecx, esi
and cl, -109 # instrumentation
not rax
cmovo rsi, rdx
bts cx, si
xor ecx, 74
and al, -56 # instrumentation
cmovl rbx, rax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
cmovl eax, eax
cmovp rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
cmovnb si, dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
bt dx, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test ecx, 1044879383
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
