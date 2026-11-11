.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovp bx, ax
test dil, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
or cl, 10
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and dl, -2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
xor edi, 74
xor edi, -47
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
jmp .bb_0.1
.bb_0.1:
btr rsi, 73
and bl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 43
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 22
test dil, -67
or rcx, 61
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 77
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 16
cmovo rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
