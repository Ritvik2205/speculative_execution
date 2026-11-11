.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
test dl, -85
cmovb rbx, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
cmovp bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
bts cx, 14
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
test bl, dl
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
bts ax, 22
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
