.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnz rdx, rbx
sub ebx, 75
imul ebx, ebx, 119
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmp cl, al
sbb al, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea di, qword ptr [rax + rdi + 4281]
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
adc al, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
mul al
mov bl, cl
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdi + rbx + 1041]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add bl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
sub rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
