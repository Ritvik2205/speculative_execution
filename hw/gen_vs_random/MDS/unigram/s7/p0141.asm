.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bt di, 52
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
cmovnp rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
bts ecx, esi
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
test dx, ax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and al, 46 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
btc cx, di
xor bx, 16
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
or ax, -4210
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and cl, 91 # instrumentation
cmovle rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
