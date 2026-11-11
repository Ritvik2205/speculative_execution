.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 33
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
not al
and cx, -8
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
not rcx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 82
btr bx, 188
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 38
xor ecx, 8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 74
cmovb edx, eax
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
