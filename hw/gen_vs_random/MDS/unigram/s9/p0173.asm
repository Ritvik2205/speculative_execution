.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
cmovo edi, edx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and dl, 120 # instrumentation
cmovnle cx, dx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
cmovns rsi, rax
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 18
btr rsi, 146
and al, 106
or ecx, ecx
or dx, 125
cmovnb rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
bts bx, dx
and al, 20 # instrumentation
cmovp di, bx
cmovnz ax, cx
cmovz dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
