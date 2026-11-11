.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, 67
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 68
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnb rbx, rbx
btr ax, 193
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
or dl, dl
or dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and dl, -73
jmp .bb_0.1
.bb_0.1:
and cl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and al, -86 # instrumentation
cmovns dx, si
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
bt si, cx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
