.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and cl, sil
or al, dl
or cl, dil
and al, -55
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or sil, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
or dil, -41
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
