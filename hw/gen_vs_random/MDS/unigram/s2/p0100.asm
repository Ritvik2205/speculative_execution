.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
xor esi, 71
test bl, 106
and bx, dx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 88
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
or al, dil
jmp .bb_0.1
.bb_0.1:
not dl
or cx, 10
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
or dl, cl
xor bx, cx
bt di, dx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
