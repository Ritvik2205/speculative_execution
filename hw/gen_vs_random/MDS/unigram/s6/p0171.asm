.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
bt eax, 28
cmovb di, ax
and dl, cl
btr edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and dl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 10
or bl, 100
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
or dl, dl
bts eax, eax
cmovz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
