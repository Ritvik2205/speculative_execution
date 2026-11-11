.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
or cl, cl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
cmovns di, cx
or al, 74
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
test bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmovnbe esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
bts eax, esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
