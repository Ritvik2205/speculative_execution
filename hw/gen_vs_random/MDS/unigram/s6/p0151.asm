.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edi, 221
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rbx, rsi
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and bx, 49
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and al, 35
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
test eax, edi
bts ecx, eax
test ecx, -1843375753
or rax, -689609688
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 48
cmovl rbx, rbx
and ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
