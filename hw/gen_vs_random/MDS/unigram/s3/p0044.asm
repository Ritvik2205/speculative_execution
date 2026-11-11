.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, edi
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
cmovno rcx, rcx
test bx, 4954
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
cmovp di, si
bt edx, ebx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 84
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rdx, 23
and al, -8
test al, al
and rbx, 65
or di, 0b1000000000000000 # instrumentation
bsr di, di
and bl, 21 # instrumentation
cmovb dx, bx
xor sil, bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
or cl, -77
or esi, -110
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
