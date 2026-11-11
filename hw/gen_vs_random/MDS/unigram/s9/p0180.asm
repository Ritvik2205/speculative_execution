.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and sil, -9
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
xor al, -26
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
bt ax, cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
test rdi, 53
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, 74
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
xor bl, al
test bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
