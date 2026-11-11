.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
bts cx, 14
test bl, dl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
cmovp bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
bts ax, 22
test dl, -95
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
jmp .bb_0.1
.bb_0.1:
and dl, 32 # instrumentation
cmovnbe edx, edi
or rsi, rcx
bts rdx, 200
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor cl, 98
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
not cl
cmovnle cx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
