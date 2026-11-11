.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
test bl, -114
and bx, 91
bt dx, bx
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and bl, al
xor dil, dl
xor rcx, -2
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor dil, -124
or cl, sil
jmp .bb_0.2
.bb_0.2:
and al, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
or dl, 85
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
