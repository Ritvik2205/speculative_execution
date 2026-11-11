.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
add dl, -1
lea eax, qword ptr [rbx + rbx + 12]
test al, -32
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and bl, bl
and sil, dil
dec eax
sub bl, 15
xor al, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 30
test al, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
