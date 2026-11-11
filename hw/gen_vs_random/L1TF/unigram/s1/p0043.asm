.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
cmovl rdx, rdi
bt rsi, 50
btr rbx, rax
cmp ecx, 76
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
setb al
setz dl
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
setz dil
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
btc edi, edi
or bl, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
