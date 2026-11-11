.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test bl, cl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and bl, 49 # instrumentation
cmovbe rsi, rdx
and sil, 84 # instrumentation
cmovbe si, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
or si, 0b1000000000000000 # instrumentation
bsr dx, si
cmovnz si, bx
cmovl ax, di
cmovz dx, dx
or ebx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
