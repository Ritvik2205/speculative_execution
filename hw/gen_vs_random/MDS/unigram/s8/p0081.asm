.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo di, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
xor rdx, rdx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 78
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and bx, cx
test al, cl
or sil, -78
and dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
cmovz dx, bx
cmovp si, cx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
cmovp cx, dx
test cl, dl
and ebx, 31
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
