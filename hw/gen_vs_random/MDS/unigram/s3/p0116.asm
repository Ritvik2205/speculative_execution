.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and cl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
test rcx, 67
cmovns edx, edi
xor dil, cl
cmovnb ax, cx
btr si, 32
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmovs eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
or cl, dl
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and bl, -38 # instrumentation
cmovp rbx, rax
xor cx, bx
cmovnle rsi, rax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
