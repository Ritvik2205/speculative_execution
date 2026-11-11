.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
btr rax, rax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
xor eax, 73
or rsi, 96
or sil, -8
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
test bl, dl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 40
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and al, -37
adc sil, 68
cmovno ebx, eax
or rsi, 63
bt edx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
