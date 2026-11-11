.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
btr bx, si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
adc rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
setnz dl
sbb di, 36
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
btr dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
cmovbe eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
