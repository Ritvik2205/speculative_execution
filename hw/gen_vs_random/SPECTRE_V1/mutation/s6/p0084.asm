.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
btr bx, 193
cmovz rax, rdi
xor bl, bl
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
bts rdi, 229
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
loope .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
sub bl, dl
lea eax, qword ptr [rbx + rbx + 18245]
cmp al, 23
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmp bl, bl
bt ecx, eax
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
