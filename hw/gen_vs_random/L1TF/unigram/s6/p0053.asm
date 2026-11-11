.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ecx, edi
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
sub rdi, 88
and sil, cl
sub ecx, 77
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 66
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or cx, dx
add dl, 42 # instrumentation
lea esi, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
mov ecx, edi
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 38
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
