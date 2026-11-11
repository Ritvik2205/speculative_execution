.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
xor bx, 95
test al, dil
xor sil, 64
setb al
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 22
lea rbx, qword ptr [rdx + rcx + 80]
test dil, -126
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
