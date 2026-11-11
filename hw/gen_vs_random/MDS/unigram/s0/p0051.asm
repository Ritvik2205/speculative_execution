.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 3
xor bl, -27
and cx, -8
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and bl, bl
and cl, 125 # instrumentation
cmovo bx, si
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
cmovns rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
cmovl edi, edi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and bl, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
or cl, 6
or sil, al
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
