.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
btc dx, si
cmovns cx, bx
or dl, -97
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or cl, bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and si, cx
and cl, 123 # instrumentation
cmovo cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
