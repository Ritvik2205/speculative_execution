.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
or dil, bl
cmovo dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
test al, -59
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 25
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and sil, -3 # instrumentation
cmovnb si, di
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 26
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
bts rcx, 115
test bl, 106
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
cmovl rsi, rax
or al, -48
and edi, 5
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
or cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
