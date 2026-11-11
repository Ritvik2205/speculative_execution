.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rax
xor cl, cl
btr rdi, 129
cmovnp bx, cx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
btr rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rax, -2039117613
jmp .bb_0.1
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and dx, 60
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
