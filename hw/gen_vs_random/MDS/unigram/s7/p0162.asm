.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
cmovb dx, ax
cmovbe edx, edx
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
xor rdi, -9
and cl, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
btr bx, si
test eax, -1634766116
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
cmovbe rbx, rbx
cmovnz ax, bx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
cmovnp ax, ax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and ebx, edi
not cl
and di, ax
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
