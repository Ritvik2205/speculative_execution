.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and dil, 53 # instrumentation
cmovnl rdi, rdi
test rax, -1579405415
or bx, 8
test dx, bx
test bl, bl
cmovnbe rcx, rcx
or si, 94
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
cmovnbe edi, esi
not ecx
cmovb cx, di
and cx, dx
and rbx, 65
cmovl rax, rdx
or ax, 30524
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and bl, -28 # instrumentation
cmovl rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
