.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
imul ebx, ebx, 119
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmovnz rdx, rbx
sbb al, cl
sub ebx, 75
cmp cl, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dl
mov bl, cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
lea di, qword ptr [rax + rdi + 4281]
mul al
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
