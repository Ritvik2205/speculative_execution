.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
or eax, -900576213
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
or dl, -8
test cl, 91
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
not dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and sil, -69
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or al, 30
test ax, -20900
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
