.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bts rsi, rdi
xor dl, cl
xor dl, -19
or al, 16
and sil, -9
and rax, 498847670
xor sil, -46
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or al, -24
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or dl, -8
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
test eax, 1838539683
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
