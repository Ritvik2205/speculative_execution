.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
or cl, bl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or bl, 100
jmp .bb_0.1
.bb_0.1:
bt ax, di
xor dl, 8
jmp .bb_0.2
.bb_0.2:
xor dil, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
bt si, cx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 24
test rdx, 17
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
