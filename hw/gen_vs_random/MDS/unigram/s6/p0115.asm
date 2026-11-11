.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
or al, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 18
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and al, -128 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
bts ax, 22
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
or sil, dl
and bl, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
or rax, rdi
cmovnbe edx, edx
test rdx, rdx
or dil, 16
cmovnle rsi, rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 52
xor dil, sil
and dil, dil
xor bx, 91
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
