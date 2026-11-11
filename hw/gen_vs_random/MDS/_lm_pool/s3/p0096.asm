.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor sil, 94
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and cl, -111
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor al, -4
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and cl, -6
not sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
