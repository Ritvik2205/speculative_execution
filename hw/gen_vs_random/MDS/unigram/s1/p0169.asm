.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 4
cmovs dx, bx
cmovz rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
test rsi, 53
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
btr ebx, esi
or si, -12
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
btc rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
