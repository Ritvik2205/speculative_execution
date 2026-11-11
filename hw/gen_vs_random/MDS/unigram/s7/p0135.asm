.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, rax
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
test bl, -14
and cl, dl
test al, al
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and dl, 120 # instrumentation
cmovnle di, bx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
btr edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and dil, dil
and cl, -44 # instrumentation
cmovno rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
