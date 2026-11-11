.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl edi, esi
and cl, 122 # instrumentation
cmovl eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
cmovnz rsi, rdx
test cl, al
btr rbx, 193
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
btr ax, 193
and dl, 37 # instrumentation
cmovnbe bx, si
xor cx, di
cmovns bx, dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
cmovs rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
and cl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
xor ax, cx
btr eax, ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
