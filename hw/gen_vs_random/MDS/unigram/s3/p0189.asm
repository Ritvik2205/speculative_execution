.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
xor bl, dil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 81
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and bl, 15 # instrumentation
cmovb bx, cx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and bl, 107 # instrumentation
cmovbe ax, dx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 65
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
cmovnz cx, ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rax, 4
or dil, -78
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
