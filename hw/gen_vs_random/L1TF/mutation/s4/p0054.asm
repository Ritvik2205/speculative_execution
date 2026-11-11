.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
sbb ecx, edi
movzx rax, bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
movzx edi, dx
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rax, 363226538
bts di, 1
jmp .bb_0.1
.bb_0.1:
or edi, 19
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
inc bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
