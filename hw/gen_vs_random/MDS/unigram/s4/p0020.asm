.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
bt si, dx
bt dx, ax
or cx, -42
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
not ecx
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
test bl, sil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
cmovnle bx, bx
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and al, 54 # instrumentation
cmovnp cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
