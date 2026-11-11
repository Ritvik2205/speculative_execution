.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
or rsi, 74
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and esi, 45
xor al, cl
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
xor dl, 40
xor al, 99
and al, cl
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
