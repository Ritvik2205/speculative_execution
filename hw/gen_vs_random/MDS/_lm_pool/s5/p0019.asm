.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -69
and bl, dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, -22
xor rax, -91
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
bt edi, esi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
or sil, -78
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
