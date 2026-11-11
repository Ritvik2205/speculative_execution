.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 58
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
xor dl, 19
mov di, bx
add ecx, 98
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
sbb edi, 10
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
add al, 112 # instrumentation
cmovnle ecx, ebx
lea si, qword ptr [rbx + rdx + 92]
cmp al, cl
or bl, -88
or rdi, rcx
cmovbe rcx, rdx
xor al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
