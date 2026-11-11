.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
test esi, 1857129931
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor dl, cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or al, -58
or rdi, -11
or dl, -8
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
or al, sil
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
