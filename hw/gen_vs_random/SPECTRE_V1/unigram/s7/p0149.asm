.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns cl
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
lea bx, qword ptr [rcx + rbx + 2101]
cmp bl, dil
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rcx + rsi + 75]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 59
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
cwd
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
bt edi, 134
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
