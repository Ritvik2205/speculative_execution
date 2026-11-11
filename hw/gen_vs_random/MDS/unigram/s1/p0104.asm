.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
xor ecx, 8
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
xor al, 8
test bl, sil
test bl, bl
and sil, sil
jmp .bb_0.1
.bb_0.1:
and bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
test cl, 54
or dil, -78
test dx, 16353
and al, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
bts eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
and rdx, rdx
btc cx, 115
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
cmovnle di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
