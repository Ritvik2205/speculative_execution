.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
cmovz rdx, rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
bts rdi, 26
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 40
xor eax, 1170472196
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
