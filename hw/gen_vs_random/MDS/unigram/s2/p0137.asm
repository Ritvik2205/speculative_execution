.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 8
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
cmovnb rcx, rbx
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
bt eax, 11
xor rbx, -51
cmovb si, cx
or cl, 100
cmovns edx, edi
and bl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
test rdx, -1624442902
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
cmovl rax, rdx
and dl, -7
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
cmovbe ax, di
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 49
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
