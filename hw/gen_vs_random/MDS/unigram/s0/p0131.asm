.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
or rcx, 7
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and dl, 60 # instrumentation
cmovno eax, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
jmp .bb_0.1
.bb_0.1:
or dx, 97
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
or dx, 18
cmovnl ax, cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 84
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 21
and dl, dil
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
cmovnle rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
