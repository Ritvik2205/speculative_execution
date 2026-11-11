.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 98
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor dil, al
or dl, 51
bts si, 205
bt rsi, rsi
or cl, 7
cmovnp rdx, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovo ecx, esi
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc dx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 55
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
bts cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
