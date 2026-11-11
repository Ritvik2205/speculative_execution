.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
or bl, al
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 43
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and dl, -73
test dil, al
or ax, -20176
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
