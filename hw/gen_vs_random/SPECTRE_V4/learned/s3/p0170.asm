.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, -5170
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
dec rcx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
dec rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
movzx eax, al
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and al, -36
test bx, -1599
or dl, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
