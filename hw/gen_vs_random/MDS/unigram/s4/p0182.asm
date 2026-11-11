.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
test bl, -9
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
and bl, 68
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
test bl, 65
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 81
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 58
jmp .bb_0.1
.bb_0.1:
test bl, cl
test dl, 48
cmovns cx, si
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
cmovb esi, edx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
