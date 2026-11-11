.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 16
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
cmovno rcx, rcx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
cmovnz ax, si
or bx, 86
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
test ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and bl, 49 # instrumentation
cmovbe rax, rsi
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
or esi, -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
