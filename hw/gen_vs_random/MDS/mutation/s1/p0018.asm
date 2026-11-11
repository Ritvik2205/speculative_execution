.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 191
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
xor bl, dl
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
test dl, 27
cmovp bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovb rbx, rsi
test bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
