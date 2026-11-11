.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
or al, -78
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and al, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
or al, -58
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and bl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovp bx, dx
or eax, 1725503461
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
