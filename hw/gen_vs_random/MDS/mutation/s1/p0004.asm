.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp si, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
or rdi, 21
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
or ebx, -15
and rcx, rdx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovp ebx, ecx
not rax
cmovbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
not rbx
or eax, -696456144
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
btr eax, 51
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
