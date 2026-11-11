.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
not dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
btr edi, edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
bt esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
cmovnb ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rdi, rcx
or dx, 125
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
and sil, -40 # instrumentation
cmovle dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
