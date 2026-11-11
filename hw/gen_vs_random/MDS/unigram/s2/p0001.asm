.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 67
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
test cx, 401
or dl, dl
or cl, 7
or cl, 6
or bl, 127
test bl, cl
test eax, -1634766116
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
cmovno ax, ax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and dil, -39
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
btc rsi, 80
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
