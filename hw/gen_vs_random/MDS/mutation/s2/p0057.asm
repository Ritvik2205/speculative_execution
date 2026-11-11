.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
bts cx, 191
test bl, dl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
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
test dl, 48
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
jmp .bb_0.1
.bb_0.1:
test dl, 9
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
cmovnb di, cx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and cl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
