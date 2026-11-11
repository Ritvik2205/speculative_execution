.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo bx, si
test dl, bl
cmovo rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmovnbe si, di
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
or rcx, -17
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and dl, -1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 32
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and bl, 108 # instrumentation
cmovns rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
