.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -62
or al, 30
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
xor al, 8
and esi, 6
xor rax, 459999114
or al, dil
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
test rdi, 32
test eax, -409834435
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or al, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or al, 37
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
