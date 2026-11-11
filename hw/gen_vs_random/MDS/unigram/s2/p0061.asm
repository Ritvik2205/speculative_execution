.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
btr rax, 29
bt di, dx
cmovnb rsi, rax
cmovnbe rdx, rdi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 48
xor ax, -4010
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 47
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dil, 61 # instrumentation
cmovl si, di
bt bx, 253
and cl, al
xor cl, al
xor di, bx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
and rbx, 65
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
