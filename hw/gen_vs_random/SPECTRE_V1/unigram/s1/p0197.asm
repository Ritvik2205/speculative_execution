.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
add cl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 37
add al, -62 # instrumentation
setnb cl
lea rdx, qword ptr [rax + rbx]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 51
cmp dx, 21
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
add ecx, 70
cmovnp di, ax
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
