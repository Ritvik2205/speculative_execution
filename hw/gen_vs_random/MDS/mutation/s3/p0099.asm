.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 8 # instrumentation
cmovz rax, rbx
cmovl rbx, rsi
bt rdi, 36
test bl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and dl, 48 # instrumentation
cmovz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
or ax, -23697
and cl, cl
and rdx, rsi
btr eax, ecx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
or esi, ecx
bt rbx, 241
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and di, 99
cmovl dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test dl, bl
bt dx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and bl, 68
test ax, 4430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
