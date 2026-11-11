.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 98
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
bt rcx, 137
not cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 86
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovl rdx, rdi
or dl, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
cmovb bx, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
cmovo si, si
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdx
and cx, 57
and dil, 55
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 34
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
test ecx, 1044879383
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
