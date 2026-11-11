.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
btr ax, 193
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 12
btc rax, 110
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
cmovo rcx, rcx
xor al, cl
jmp .bb_0.1
.bb_0.1:
xor dl, dil
xor bx, 82
cmovle rsi, rsi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
btc bx, 104
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
