.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and cx, -2
btr eax, eax
not ebx
jmp .bb_0.1
.bb_0.1:
or al, -17
and di, 91
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
bt esi, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
