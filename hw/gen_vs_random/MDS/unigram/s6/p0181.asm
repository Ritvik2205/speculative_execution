.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 125 # instrumentation
cmovo ax, bx
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
btr rsi, 146
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and dl, 37 # instrumentation
cmovnbe cx, si
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovnbe ax, cx
and rdx, rbx
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 94
and dl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovbe dx, si
or rbx, -77
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
