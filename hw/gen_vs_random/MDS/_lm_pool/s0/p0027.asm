.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
or al, dil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 74
and esi, 51
and di, 99
xor rax, -843636050
or ax, 16560
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
