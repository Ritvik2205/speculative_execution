.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
bts rdx, 255
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 58
or al, -48
not ecx
or ecx, 98
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
cmovbe si, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bt cx, bx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 64
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
not ax
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
