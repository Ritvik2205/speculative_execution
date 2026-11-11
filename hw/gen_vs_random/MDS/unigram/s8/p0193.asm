.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rcx
cmovnz edx, edi
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and bl, 65 # instrumentation
cmovnbe bx, ax
xor edi, 43
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 42
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor sil, dl
bts edx, edx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
bts cx, dx
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
