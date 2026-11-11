.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and bl, 38 # instrumentation
cmovno rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
or sil, -49
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
test esi, ecx
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
