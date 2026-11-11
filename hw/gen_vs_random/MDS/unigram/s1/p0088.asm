.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, 1949278494
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and al, -75 # instrumentation
cmovp eax, eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
cmovle rdi, rax
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovns ax, cx
xor bl, 67
test dl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
and cl, 91 # instrumentation
cmovle rdx, rdx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 13
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
bts ax, 22
and ecx, -104
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
cmovz cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
