.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and bl, bl
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and al, 49
xor bl, al
and edx, -44
xor cx, -18
or cl, 7
or al, dil
or dl, -8
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
