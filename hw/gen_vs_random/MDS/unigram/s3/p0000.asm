.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and dl, -107 # instrumentation
cmovz rcx, rsi
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
cmovnb rax, rax
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 13
jmp .bb_0.1
.bb_0.1:
and edx, 4
bt ebx, ebx
cmovnb cx, dx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
or edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and cl, -115 # instrumentation
cmovl bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
