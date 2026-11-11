.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
or dil, -76
test edx, -1561252782
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
xor di, di
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
cmovp edx, eax
cmovb rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
test dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
bt ecx, 19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
