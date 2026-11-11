.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test bl, -9
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
or al, -58
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 3
test eax, -571234566
and dx, 60
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
xor al, cl
and esi, 13
cmovnbe rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
