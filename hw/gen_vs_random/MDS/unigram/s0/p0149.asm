.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
btc rbx, 102
and dil, 84 # instrumentation
cmovbe di, ax
and edi, 23
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
cmovno di, di
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btr bx, dx
and al, dil
bts rax, 77
btr rbx, rax
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 11
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 16
and dl, -73
or edx, edx
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
