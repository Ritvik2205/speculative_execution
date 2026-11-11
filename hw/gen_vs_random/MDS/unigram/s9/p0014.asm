.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 77
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 13
and bl, 109 # instrumentation
cmovs ax, di
cmovnbe ax, dx
cmovnp ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 72
and dl, 16 # instrumentation
cmovle ebx, ebx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test al, -81
or dl, -21
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
cmovo bx, dx
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
