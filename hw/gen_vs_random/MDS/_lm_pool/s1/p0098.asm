.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and bl, 68
xor bl, -88
btr ax, bx
test rbx, 71
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and dl, dl
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
