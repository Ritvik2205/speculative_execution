.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
or si, -12
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
bts di, bx
cmovo rbx, rax
jmp .bb_0.1
.bb_0.1:
btc ax, 49
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
cmovp rsi, rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 26
bt cx, dx
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and al, 67 # instrumentation
cmovl rsi, rdx
cmovb rdi, rsi
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
