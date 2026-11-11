.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
xor cl, dil
or al, bl
bts eax, edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and ax, -122
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovnbe eax, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
or dl, sil
bts rsi, rax
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and al, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
test cl, 73
btc rdx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
