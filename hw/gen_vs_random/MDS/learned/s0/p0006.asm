.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
xor di, -116
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 83
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
cmovnb rax, rax
xor cl, bl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
lea edi, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
xor al, al
or al, -48
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
test dil, -72
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and bl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
