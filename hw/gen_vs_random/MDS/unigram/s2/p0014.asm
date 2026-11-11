.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
xor bx, 48
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 95
cmovs cx, bx
test edx, ebx
xor di, 93
cmovnle rdx, rbx
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and al, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 58
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
not ecx
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
