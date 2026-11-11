.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
bts rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test bl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and bl, dl
test al, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
test al, 91
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor dil, -70
or al, dil
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
