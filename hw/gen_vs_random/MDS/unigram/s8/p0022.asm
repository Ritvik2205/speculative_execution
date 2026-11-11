.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rdi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
cmovz cx, di
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
or rax, rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
not eax
and esi, esi
and dl, 60 # instrumentation
cmovnl ecx, ebx
btr ebx, 0
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
